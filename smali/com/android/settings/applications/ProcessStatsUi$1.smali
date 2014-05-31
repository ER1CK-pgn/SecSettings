.class final Lcom/android/settings/applications/ProcessStatsUi$1;
.super Ljava/lang/Object;
.source "ProcessStatsUi.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ProcessStatsUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/applications/ProcStatsEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/applications/ProcStatsEntry;Lcom/android/settings/applications/ProcStatsEntry;)I
    .locals 4
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 75
    iget-wide v0, p1, Lcom/android/settings/applications/ProcStatsEntry;->mWeight:J

    iget-wide v2, p2, Lcom/android/settings/applications/ProcStatsEntry;->mWeight:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 76
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    .line 77
    :cond_0
    iget-wide v0, p1, Lcom/android/settings/applications/ProcStatsEntry;->mWeight:J

    iget-wide v2, p2, Lcom/android/settings/applications/ProcStatsEntry;->mWeight:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 78
    const/4 v0, -0x1

    goto :goto_0

    .line 80
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    check-cast p1, Lcom/android/settings/applications/ProcStatsEntry;

    .end local p1
    check-cast p2, Lcom/android/settings/applications/ProcStatsEntry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/ProcessStatsUi$1;->compare(Lcom/android/settings/applications/ProcStatsEntry;Lcom/android/settings/applications/ProcStatsEntry;)I

    move-result v0

    return v0
.end method
