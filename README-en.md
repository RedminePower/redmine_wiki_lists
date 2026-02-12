# redmine_wiki_lists

## Features

A plugin that provides macros to display lists of issues and wiki pages in wiki pages or issue descriptions.

**Available macros:**
- `{{wiki_list}}` - Display a list of wiki pages in table format
- `{{issue_name_link}}` - Generate a link from an issue subject
- `{{ref_issues}}` - Display a list of issues matching specified conditions

### wiki_list Macro

Displays a list of wiki pages in table format. You can extract specific keywords from page content and display them as columns.

**Basic syntax:**
```
{{wiki_list([options], [column specifications]...)}}
```

**Options:**
| Option | Description |
|--------|-------------|
| `-p` | Show only pages in current project |
| `-p=identifier` | Show only pages in specified project |
| `-c` | Target only child pages |
| `-w=width` | Specify table width |

**Column specifications:**
| Specification | Description |
|---------------|-------------|
| `+title` | Page title (with link) |
| `+alias` | Page aliases (redirects) |
| `+project` | Project name |
| `keyword` | Extract text from keyword to end of line |
| `keyword\terminator` | Extract text from keyword to terminator |

You can add display name and width to column specifications: `keyword|display_name|width`

**Example:**
```
{{wiki_list(-c, +title|Page Name, Owner:|Owner)}}
```

### issue_name_link Macro

Generates a link from an issue subject. Useful when you want to create links using the subject instead of the issue number.

**Basic syntax:**
```
{{issue_name_link([project_identifier:]issue_subject[|display_text])}}
```

**Examples:**
```
{{issue_name_link(Implement Feature A)}}
{{issue_name_link(other_project:Implement Feature B|Link to Feature B)}}
```

### ref_issues Macro

Displays a list of issues matching specified conditions. You can use custom queries and specify various filters.

**Basic syntax:**
```
{{ref_issues([options]..., [columns]...)}}
```

**Options:**
| Option | Description |
|--------|-------------|
| `-i=ID` | Specify custom query by ID |
| `-q=name` | Specify custom query by name |
| `-p` | Restrict to current project |
| `-p=identifier` | Restrict to specified project |
| `-f:filter=value` | Add filter (separate multiple values with `\|`) |
| `-t=column` | Display only text of specified column |
| `-l=column` | Display specified column as link |
| `-c` | Display count only |
| `-0` | Display nothing if no results |
| `-n=number` | Display limit (default: 100, max: 1000) |

**Examples:**
```
{{ref_issues(-p, -f:status=New|In Progress, subject, assigned_to)}}
{{ref_issues(-q=Open Issues, -c)}}
```

## Notes

This plugin allows displaying issue information with arbitrary search conditions through wiki macros. It is recommended for use only in environments where all users are trusted.

## Supported Versions

- Redmine 5.x (tested on 5.1.11)
- Redmine 6.x (tested on 6.1.1)

## Installation

The Redmine installation path varies depending on your environment.
The instructions below use `/var/lib/redmine`.
Please adjust according to your environment.

| Environment | Redmine Path |
|-------------|--------------|
| apt (Debian/Ubuntu) | `/var/lib/redmine` |
| Docker (official image) | `/usr/src/redmine` |
| Bitnami | `/opt/bitnami/redmine` |

Run the following commands and restart Redmine.

```
$ cd /var/lib/redmine/plugins
$ git clone https://github.com/RedminePower/redmine_wiki_lists.git
```

## Uninstallation

Delete the plugin folder and restart Redmine.

```
$ cd /var/lib/redmine/plugins
$ rm -rf redmine_wiki_lists
```
