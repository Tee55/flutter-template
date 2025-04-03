# Skylines

Words of World is a context-based language learning adventure RPG. It takes the player to different cities of the world and allows them to engage with characters across cultures and languages to practice the target.

# Initial Setup

### Step 1: Install firebase CLI

Follow https://firebase.google.com/docs/cli

### Step 2: Install flutterfire_cli

```
dart pub global activate flutterfire_cli
```

### Step 3: Config firebase

```
flutterfire configure
```

The flutterfire should create firebase_options.dart.

# Create Android

```
flutter create --platforms android
```

# Create IOS

```
flutter create --platforms ios
```

# Folder structure

### Important directory layout

    .
    ├── assets               # Contains fonts, images, etc.
    └── lib
        ├── api              # Related to API
        ├── gen              # Create by flutter_gen package
        ├── l10n             # Translation Files
        ├── routes           # Routing
        ├── shared           # Shared components, constants, etc.
        ├── src              # Contain Controllers, Models, Screens
        └── theme            # Colors, TextStyles, Theme

# Warning

For consistency across projects, we recommend following these guidelines:

- Use snake_case for folder and file names.

- Use PascalCase for class names.

- Use only styles provide in theme folder.

- Shared component must be written from scratch. Avoid extending from another shared component as much as possible.

- **Use GetX package**

# Assets Generation

### Step 1: Add images, icons to assets folder

```
assets\images\background.png
```

### Step 2: Run following command

```
dart run build_runner build --delete-conflicting-outputs
```

### Step 3: Use in the project (Reference to filename)

```
AssetImage(Assets.images.background.path)
```

or

```
Assets.images.background.svg()
```

# Conventional Commits

Please use only chore, feat, fix, refactor and use in the following format:

```
<type>: <description>
```

For example:

```
feat: home screen
```
