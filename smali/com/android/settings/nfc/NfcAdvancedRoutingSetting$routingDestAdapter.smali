.class public Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NfcAdvancedRoutingSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "routingDestAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private Id_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Summary:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Title:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;


# direct methods
.method public constructor <init>(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 276
    .local p3, Titledata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, Summarydata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, Idlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

    .line 277
    const/high16 v0, -0x8000

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->Title:Ljava/util/ArrayList;

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->Summary:Ljava/util/ArrayList;

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->Id_list:Ljava/util/ArrayList;

    .line 278
    iput-object p2, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->mContext:Landroid/content/Context;

    .line 279
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 280
    iget-object v0, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->Title:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 281
    iget-object v0, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->Summary:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 282
    iget-object v0, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->Id_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 283
    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->Title:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->Id_list:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 287
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->Id_list:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

    iget-object v2, v2, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->currentRoute:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->selectedPos:I

    .line 288
    new-instance v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

    invoke-direct {v0, v1, v5}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;-><init>(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$1;)V

    .line 289
    .local v0, holder:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040109

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 290
    const v1, 0x7f0b02a7

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mTitle:Landroid/widget/TextView;

    .line 291
    const v1, 0x7f0b02a8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mSummary:Landroid/widget/TextView;

    .line 292
    const v1, 0x7f0b02a6

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mButton:Landroid/widget/RadioButton;

    .line 293
    const v1, 0x7f0b02a5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mAdvanced:Landroid/view/View;

    .line 294
    sget v1, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->selectedPos:I

    if-ne p1, v1, :cond_0

    .line 295
    iget-object v1, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 299
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 300
    iget-object v2, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->Title:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v2, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->Summary:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v1, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p1}, Landroid/widget/RadioButton;->setId(I)V

    .line 303
    iget-object v1, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mAdvanced:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setId(I)V

    .line 304
    iget-object v1, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 305
    iget-object v1, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 306
    iget-object v1, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 307
    iget-object v1, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mAdvanced:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 308
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

    #getter for: Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->rButtonList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->access$100(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v1, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mAdvanced:Landroid/view/View;

    new-instance v2, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter$1;-><init>(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    return-object p2

    .line 297
    :cond_0
    iget-object v1, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method
