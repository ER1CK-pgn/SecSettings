.class public Lcom/android/settings/KnoxSettings$PersonaListRowAdapter;
.super Landroid/widget/ArrayAdapter;
.source "KnoxSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/KnoxSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PersonaListRowAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/KnoxSettings$PersonaListRow;",
        ">;"
    }
.end annotation


# instance fields
.field private final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/KnoxSettings$PersonaListRow;",
            ">;"
        }
    .end annotation
.end field

.field private knoxIcon:Landroid/widget/ImageView;

.field private knoxText:Landroid/widget/TextView;

.field private final knoxTextViewResourceId:I

.field private knoxUninstallBtn:Landroid/widget/Button;

.field final synthetic this$0:Lcom/android/settings/KnoxSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/KnoxSettings;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/KnoxSettings$PersonaListRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/KnoxSettings$PersonaListRow;>;"
    iput-object p1, p0, Lcom/android/settings/KnoxSettings$PersonaListRowAdapter;->this$0:Lcom/android/settings/KnoxSettings;

    .line 199
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 200
    iput-object p4, p0, Lcom/android/settings/KnoxSettings$PersonaListRowAdapter;->items:Ljava/util/ArrayList;

    .line 201
    iput p3, p0, Lcom/android/settings/KnoxSettings$PersonaListRowAdapter;->knoxTextViewResourceId:I

    .line 202
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/KnoxSettings$PersonaListRowAdapter;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/android/settings/KnoxSettings$PersonaListRowAdapter;->doButtonOneClickActions(I)V

    return-void
.end method

.method private doButtonOneClickActions(I)V
    .locals 5
    .parameter "rowNumber"

    .prologue
    .line 252
    const-string v2, "KnoxSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doButtonOneClickActions : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-static {}, Lcom/android/settings/KnoxSettings;->access$100()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/KnoxSettings$PersonaListRow;

    invoke-virtual {v2}, Lcom/android/settings/KnoxSettings$PersonaListRow;->getId()I

    move-result v0

    .line 256
    .local v0, id:I
    invoke-static {}, Lcom/android/settings/KnoxSettings;->access$200()Landroid/os/PersonaManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 257
    const-string v2, "KnoxSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uninstall personaID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.knox.containeragent2"

    const-string v3, "com.sec.knox.containeragent2.ui.KnoxRemoveConfirmActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .local v1, removalComponent:Landroid/content/ComponentName;
    invoke-static {}, Lcom/android/settings/KnoxSettings;->access$200()Landroid/os/PersonaManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/os/PersonaManager;->markForRemoval(ILandroid/content/ComponentName;)V

    .line 261
    .end local v1           #removalComponent:Landroid/content/ComponentName;
    :cond_0
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 206
    const-string v3, "KnoxSettings"

    const-string v4, "PersonaListRowAdapter\'s getView"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    move-object v2, p2

    .line 208
    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/KnoxSettings$PersonaListRowAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 210
    .local v1, vi:Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/android/settings/KnoxSettings$PersonaListRowAdapter;->knoxTextViewResourceId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 212
    invoke-virtual {v2, v5}, Landroid/view/View;->setClickable(Z)V

    .line 213
    new-instance v3, Lcom/android/settings/KnoxSettings$PersonaListRowAdapter$1;

    invoke-direct {v3, p0}, Lcom/android/settings/KnoxSettings$PersonaListRowAdapter$1;-><init>(Lcom/android/settings/KnoxSettings$PersonaListRowAdapter;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    .end local v1           #vi:Landroid/view/LayoutInflater;
    :cond_0
    const v3, 0x7f0b024b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/KnoxSettings$PersonaListRowAdapter;->knoxIcon:Landroid/widget/ImageView;

    .line 222
    const v3, 0x7f0b024c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/KnoxSettings$PersonaListRowAdapter;->knoxText:Landroid/widget/TextView;

    .line 223
    const v3, 0x7f0b024d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/KnoxSettings$PersonaListRowAdapter;->knoxUninstallBtn:Landroid/widget/Button;

    .line 225
    iget-object v3, p0, Lcom/android/settings/KnoxSettings$PersonaListRowAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/KnoxSettings$PersonaListRow;

    .line 227
    .local v0, listRow:Lcom/android/settings/KnoxSettings$PersonaListRow;
    if-eqz v0, :cond_2

    .line 228
    invoke-virtual {v0}, Lcom/android/settings/KnoxSettings$PersonaListRow;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "knox-b2b"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 229
    iget-object v3, p0, Lcom/android/settings/KnoxSettings$PersonaListRowAdapter;->knoxUninstallBtn:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 234
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/settings/KnoxSettings$PersonaListRowAdapter;->knoxIcon:Landroid/widget/ImageView;

    const v4, 0x7f020415

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 236
    iget-object v3, p0, Lcom/android/settings/KnoxSettings$PersonaListRowAdapter;->knoxUninstallBtn:Landroid/widget/Button;

    new-instance v4, Lcom/android/settings/KnoxSettings$PersonaListRowAdapter$2;

    invoke-direct {v4, p0, p1}, Lcom/android/settings/KnoxSettings$PersonaListRowAdapter$2;-><init>(Lcom/android/settings/KnoxSettings$PersonaListRowAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v3, p0, Lcom/android/settings/KnoxSettings$PersonaListRowAdapter;->knoxText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/settings/KnoxSettings$PersonaListRow;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :cond_2
    return-object v2

    .line 230
    :cond_3
    invoke-virtual {v0}, Lcom/android/settings/KnoxSettings$PersonaListRow;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "knox-b2c"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 231
    iget-object v3, p0, Lcom/android/settings/KnoxSettings$PersonaListRowAdapter;->knoxUninstallBtn:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
