.class final Lcom/android/settings/applications/ApplicationsState$8;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Lcom/android/settings/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/applications/CanBeOnSdCardChecker;

    invoke-direct {v0}, Lcom/android/settings/applications/CanBeOnSdCardChecker;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState$8;->mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    return-void
.end method


# virtual methods
.method public filterApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$8;->mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/CanBeOnSdCardChecker;->check(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method public init()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$8;->mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    invoke-virtual {v0}, Lcom/android/settings/applications/CanBeOnSdCardChecker;->init()V

    return-void
.end method
