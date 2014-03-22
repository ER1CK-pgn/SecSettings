.class public Lcom/android/settings/KnoxSettings;
.super Landroid/app/Activity;
.source "KnoxSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/KnoxSettings$PersonaListRow;,
        Lcom/android/settings/KnoxSettings$PersonaListRowAdapter;
    }
.end annotation


# static fields
.field private static final SETTINGS_KNOX_VALUE:Ljava/lang/Boolean;

.field private static mPersona:Landroid/os/PersonaManager;

.field private static personaInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static personaList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/KnoxSettings$PersonaListRow;",
            ">;"
        }
    .end annotation
.end field

.field private static personaListSize:I


# instance fields
.field private crateKnoxPopup:Landroid/widget/TextView;

.field private personaListAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/settings/KnoxSettings$PersonaListRow;",
            ">;"
        }
    .end annotation
.end field

.field private personaListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    sput-object v0, Lcom/android/settings/KnoxSettings;->mPersona:Landroid/os/PersonaManager;

    .line 30
    sput-object v0, Lcom/android/settings/KnoxSettings;->personaInfoList:Ljava/util/List;

    .line 40
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/settings/KnoxSettings;->SETTINGS_KNOX_VALUE:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 264
    return-void
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/settings/KnoxSettings;->personaList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200()Landroid/os/PersonaManager;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/settings/KnoxSettings;->mPersona:Landroid/os/PersonaManager;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f0400e1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 52
    const-string v0, "persona"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    sput-object v0, Lcom/android/settings/KnoxSettings;->mPersona:Landroid/os/PersonaManager;

    .line 54
    const v0, 0x7f0b024b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/KnoxSettings;->personaListView:Landroid/widget/ListView;

    .line 56
    const v0, 0x7f0b024a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/KnoxSettings;->crateKnoxPopup:Landroid/widget/TextView;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/KnoxSettings;->personaList:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Lcom/android/settings/KnoxSettings$PersonaListRowAdapter;

    const v1, 0x7f0400e0

    sget-object v2, Lcom/android/settings/KnoxSettings;->personaList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/android/settings/KnoxSettings$PersonaListRowAdapter;-><init>(Lcom/android/settings/KnoxSettings;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/settings/KnoxSettings;->personaListAdapter:Landroid/widget/ArrayAdapter;

    .line 60
    iget-object v0, p0, Lcom/android/settings/KnoxSettings;->personaListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/KnoxSettings;->personaListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 156
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f120003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 157
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 163
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 184
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .line 187
    :goto_0
    return v2

    .line 168
    :sswitch_0
    sget-object v2, Lcom/android/settings/KnoxSettings;->mPersona:Landroid/os/PersonaManager;

    if-eqz v2, :cond_0

    .line 169
    sget-object v2, Lcom/android/settings/KnoxSettings;->mPersona:Landroid/os/PersonaManager;

    invoke-virtual {v2}, Landroid/os/PersonaManager;->getPersonas()Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/android/settings/KnoxSettings;->personaInfoList:Ljava/util/List;

    .line 170
    sget-object v2, Lcom/android/settings/KnoxSettings;->personaInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 171
    .local v1, listSize:I
    const-string v2, "KnoxSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PersonaList size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 173
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.knox.setupwizardstub"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 174
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "KNOX_SETTINGS"

    sget-object v3, Lcom/android/settings/KnoxSettings;->SETTINGS_KNOX_VALUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 175
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 187
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #listSize:I
    :cond_0
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 181
    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 163
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f0b0675 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 21

    .prologue
    .line 65
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 68
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 70
    const/4 v2, 0x2

    new-array v14, v2, [I

    .line 71
    .local v14, personaSerialNum:[I
    const/4 v2, 0x2

    new-array v12, v2, [Ljava/lang/String;

    .line 72
    .local v12, personaName:[Ljava/lang/String;
    const/4 v2, 0x2

    new-array v9, v2, [Ljava/lang/String;

    .line 73
    .local v9, personaIconPath:[Ljava/lang/String;
    const/4 v2, 0x2

    new-array v10, v2, [I

    .line 74
    .local v10, personaId:[I
    const/4 v2, 0x2

    new-array v15, v2, [Ljava/lang/String;

    .line 75
    .local v15, personaType:[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 77
    .local v13, personaRemoveFlag:Ljava/lang/Boolean;
    const/4 v11, 0x0

    .line 81
    .local v11, personaListRealSize:I
    sget-object v2, Lcom/android/settings/KnoxSettings;->mPersona:Landroid/os/PersonaManager;

    if-eqz v2, :cond_4

    .line 82
    sget-object v2, Lcom/android/settings/KnoxSettings;->mPersona:Landroid/os/PersonaManager;

    invoke-virtual {v2}, Landroid/os/PersonaManager;->getPersonas()Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/android/settings/KnoxSettings;->personaInfoList:Ljava/util/List;

    .line 83
    sget-object v2, Lcom/android/settings/KnoxSettings;->personaInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sput v2, Lcom/android/settings/KnoxSettings;->personaListSize:I

    .line 84
    const-string v2, "KnoxSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onResume] listSize is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/settings/KnoxSettings;->personaListSize:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget v2, Lcom/android/settings/KnoxSettings;->personaListSize:I

    if-eqz v2, :cond_0

    .line 87
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/KnoxSettings;->crateKnoxPopup:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 90
    :cond_0
    sget-object v2, Lcom/android/settings/KnoxSettings;->personaList:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/settings/KnoxSettings;->personaList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 92
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    sget v2, Lcom/android/settings/KnoxSettings;->personaListSize:I

    if-ge v8, v2, :cond_2

    .line 94
    sget-object v2, Lcom/android/settings/KnoxSettings;->personaInfoList:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaInfo;

    iget-boolean v2, v2, Landroid/content/pm/PersonaInfo;->removePersona:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 95
    const-string v2, "KnoxSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "personaRemoveFlag is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 98
    sget-object v2, Lcom/android/settings/KnoxSettings;->personaInfoList:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->serialNumber:I

    aput v2, v14, v8

    .line 99
    sget-object v2, Lcom/android/settings/KnoxSettings;->personaInfoList:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaInfo;

    iget-object v2, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v2, v12, v8

    .line 100
    sget-object v2, Lcom/android/settings/KnoxSettings;->personaInfoList:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    aput v2, v10, v8

    .line 101
    sget-object v2, Lcom/android/settings/KnoxSettings;->personaInfoList:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaInfo;

    iget-object v2, v2, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    aput-object v2, v9, v8

    .line 102
    sget-object v2, Lcom/android/settings/KnoxSettings;->personaInfoList:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaInfo;

    iget-object v2, v2, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    aput-object v2, v15, v8

    .line 104
    add-int/lit8 v11, v11, 0x1

    .line 106
    const-string v2, "KnoxSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onResume]personaListRealSize "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v2, "KnoxSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onResume]personaSerialNum "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v14, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string v2, "KnoxSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onResume]personaName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v12, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v2, "KnoxSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onResume]personaId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v10, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v2, "KnoxSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onResume]personaIconPath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v9, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v2, "KnoxSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onResume]personaType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v15, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 116
    :cond_2
    const/4 v2, 0x2

    if-lt v11, v2, :cond_3

    .line 118
    const/4 v2, 0x0

    aget v2, v14, v2

    const/4 v3, 0x1

    aget v3, v14, v3

    if-le v2, v3, :cond_3

    .line 119
    const/4 v2, 0x1

    aget v19, v14, v2

    .line 120
    .local v19, tempPersonaSerialNum:I
    const/4 v2, 0x1

    aget-object v18, v12, v2

    .line 121
    .local v18, tempPersonaName:Ljava/lang/String;
    const/4 v2, 0x1

    aget v17, v10, v2

    .line 122
    .local v17, tempPersonaId:I
    const/4 v2, 0x1

    aget-object v16, v9, v2

    .line 123
    .local v16, tempPersonaIconPath:Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v20, v15, v2

    .line 125
    .local v20, tempPersonaType:Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x0

    aget v3, v14, v3

    aput v3, v14, v2

    .line 126
    const/4 v2, 0x1

    const/4 v3, 0x0

    aget-object v3, v12, v3

    aput-object v3, v12, v2

    .line 127
    const/4 v2, 0x1

    const/4 v3, 0x0

    aget v3, v10, v3

    aput v3, v10, v2

    .line 128
    const/4 v2, 0x1

    const/4 v3, 0x0

    aget-object v3, v9, v3

    aput-object v3, v9, v2

    .line 129
    const/4 v2, 0x1

    const/4 v3, 0x0

    aget-object v3, v15, v3

    aput-object v3, v15, v2

    .line 131
    const/4 v2, 0x0

    aput v19, v14, v2

    .line 132
    const/4 v2, 0x0

    aput-object v18, v12, v2

    .line 133
    const/4 v2, 0x0

    aput v17, v10, v2

    .line 134
    const/4 v2, 0x0

    aput-object v16, v9, v2

    .line 135
    const/4 v2, 0x0

    aput-object v20, v15, v2

    .line 139
    .end local v16           #tempPersonaIconPath:Ljava/lang/String;
    .end local v17           #tempPersonaId:I
    .end local v18           #tempPersonaName:Ljava/lang/String;
    .end local v19           #tempPersonaSerialNum:I
    .end local v20           #tempPersonaType:Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v11, :cond_4

    .line 140
    const-string v2, "KnoxSettings"

    const-string v3, "Add to PersonaList"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v1, Lcom/android/settings/KnoxSettings$PersonaListRow;

    aget v3, v14, v8

    aget-object v4, v12, v8

    aget v5, v10, v8

    aget-object v6, v9, v8

    aget-object v7, v15, v8

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/KnoxSettings$PersonaListRow;-><init>(Lcom/android/settings/KnoxSettings;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 143
    .local v1, personaData:Lcom/android/settings/KnoxSettings$PersonaListRow;
    sget-object v2, Lcom/android/settings/KnoxSettings;->personaList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/KnoxSettings;->personaListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 139
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 148
    .end local v1           #personaData:Lcom/android/settings/KnoxSettings$PersonaListRow;
    .end local v8           #i:I
    :cond_4
    return-void
.end method
