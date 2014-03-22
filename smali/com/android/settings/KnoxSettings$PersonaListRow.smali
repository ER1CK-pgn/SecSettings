.class Lcom/android/settings/KnoxSettings$PersonaListRow;
.super Ljava/lang/Object;
.source "KnoxSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/KnoxSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PersonaListRow"
.end annotation


# instance fields
.field private personaIconPath:Ljava/lang/String;

.field private personaId:I

.field private personaName:Ljava/lang/String;

.field private personaSerialNum:I

.field private personaType:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/KnoxSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/KnoxSettings;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "SerialNum"
    .parameter "Name"
    .parameter "Id"
    .parameter "IconPath"
    .parameter "type"

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/settings/KnoxSettings$PersonaListRow;->this$0:Lcom/android/settings/KnoxSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    invoke-virtual {p0, p2}, Lcom/android/settings/KnoxSettings$PersonaListRow;->setSerialNum(I)V

    .line 273
    invoke-virtual {p0, p3}, Lcom/android/settings/KnoxSettings$PersonaListRow;->setName(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0, p4}, Lcom/android/settings/KnoxSettings$PersonaListRow;->setId(I)V

    .line 275
    invoke-virtual {p0, p5}, Lcom/android/settings/KnoxSettings$PersonaListRow;->setIconPath(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0, p6}, Lcom/android/settings/KnoxSettings$PersonaListRow;->setType(Ljava/lang/String;)V

    .line 277
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/android/settings/KnoxSettings$PersonaListRow;->personaId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/settings/KnoxSettings$PersonaListRow;->personaName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/settings/KnoxSettings$PersonaListRow;->personaType:Ljava/lang/String;

    return-object v0
.end method

.method public setIconPath(Ljava/lang/String;)V
    .locals 0
    .parameter "mIconPath"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/settings/KnoxSettings$PersonaListRow;->personaIconPath:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "mId"

    .prologue
    .line 294
    iput p1, p0, Lcom/android/settings/KnoxSettings$PersonaListRow;->personaId:I

    .line 295
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "mName"

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/settings/KnoxSettings$PersonaListRow;->personaName:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public setSerialNum(I)V
    .locals 0
    .parameter "mSerialNum"

    .prologue
    .line 280
    iput p1, p0, Lcom/android/settings/KnoxSettings$PersonaListRow;->personaSerialNum:I

    .line 281
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/settings/KnoxSettings$PersonaListRow;->personaType:Ljava/lang/String;

    .line 308
    return-void
.end method
