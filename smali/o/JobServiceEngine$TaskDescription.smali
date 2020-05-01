.class public final Lo/JobServiceEngine$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/WallpaperBackupHelper$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/JobServiceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/WallpaperBackupHelper$Application<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lo/RulesManager;


# direct methods
.method public constructor <init>(Lo/RulesManager;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lo/JobServiceEngine$TaskDescription;->b:Lo/RulesManager;

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 58
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public d(Ljava/io/InputStream;)Lo/WallpaperBackupHelper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lo/WallpaperBackupHelper<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Lo/JobServiceEngine;

    iget-object v1, p0, Lo/JobServiceEngine$TaskDescription;->b:Lo/RulesManager;

    invoke-direct {v0, p1, v1}, Lo/JobServiceEngine;-><init>(Ljava/io/InputStream;Lo/RulesManager;)V

    return-object v0
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Lo/WallpaperBackupHelper;
    .locals 0

    .line 42
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lo/JobServiceEngine$TaskDescription;->d(Ljava/io/InputStream;)Lo/WallpaperBackupHelper;

    move-result-object p1

    return-object p1
.end method
