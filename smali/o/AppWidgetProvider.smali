.class public Lo/AppWidgetProvider;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AppWidgetProvider$Application;
    }
.end annotation


# instance fields
.field private final b:Lo/CharArrayReader$Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CharArrayReader$Activity<",
            "Lo/AppWidgetProvider$Application;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lo/FeatureGroupInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/FeatureGroupInfo<",
            "Lo/FileBackupHelperBase;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lo/FeatureGroupInfo;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Lo/FeatureGroupInfo;-><init>(J)V

    iput-object v0, p0, Lo/AppWidgetProvider;->c:Lo/FeatureGroupInfo;

    .line 23
    new-instance v0, Lo/AppWidgetProvider$2;

    invoke-direct {v0, p0}, Lo/AppWidgetProvider$2;-><init>(Lo/AppWidgetProvider;)V

    const/16 v1, 0xa

    invoke-static {v1, v0}, Lo/InstantAppRequest;->b(ILo/InstantAppRequest$ActionBar;)Lo/CharArrayReader$Activity;

    move-result-object v0

    iput-object v0, p0, Lo/AppWidgetProvider;->b:Lo/CharArrayReader$Activity;

    return-void
.end method

.method private a(Lo/FileBackupHelperBase;)Ljava/lang/String;
    .locals 2

    .line 50
    iget-object v0, p0, Lo/AppWidgetProvider;->b:Lo/CharArrayReader$Activity;

    invoke-interface {v0}, Lo/CharArrayReader$Activity;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AppWidgetProvider$Application;

    .line 52
    :try_start_0
    iget-object v1, v0, Lo/AppWidgetProvider$Application;->d:Ljava/security/MessageDigest;

    invoke-interface {p1, v1}, Lo/FileBackupHelperBase;->c(Ljava/security/MessageDigest;)V

    .line 54
    iget-object p1, v0, Lo/AppWidgetProvider$Application;->d:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-static {p1}, Lo/FallbackCategoryProvider;->c([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    iget-object v1, p0, Lo/AppWidgetProvider;->b:Lo/CharArrayReader$Activity;

    invoke-interface {v1, v0}, Lo/CharArrayReader$Activity;->c(Ljava/lang/Object;)Z

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lo/AppWidgetProvider;->b:Lo/CharArrayReader$Activity;

    invoke-interface {v1, v0}, Lo/CharArrayReader$Activity;->c(Ljava/lang/Object;)Z

    throw p1
.end method


# virtual methods
.method public e(Lo/FileBackupHelperBase;)Ljava/lang/String;
    .locals 3

    .line 37
    iget-object v0, p0, Lo/AppWidgetProvider;->c:Lo/FeatureGroupInfo;

    monitor-enter v0

    .line 38
    :try_start_0
    iget-object v1, p0, Lo/AppWidgetProvider;->c:Lo/FeatureGroupInfo;

    invoke-virtual {v1, p1}, Lo/FeatureGroupInfo;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 41
    invoke-direct {p0, p1}, Lo/AppWidgetProvider;->a(Lo/FileBackupHelperBase;)Ljava/lang/String;

    move-result-object v1

    .line 43
    :cond_0
    iget-object v2, p0, Lo/AppWidgetProvider;->c:Lo/FeatureGroupInfo;

    monitor-enter v2

    .line 44
    :try_start_1
    iget-object v0, p0, Lo/AppWidgetProvider;->c:Lo/FeatureGroupInfo;

    invoke-virtual {v0, p1, v1}, Lo/FeatureGroupInfo;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 39
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
