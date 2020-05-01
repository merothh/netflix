.class Lo/UsageStats$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/UsageStatsManager$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/UsageStats;-><init>(Landroid/content/Context;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lo/UsageStats$3;->b:Landroid/content/Context;

    iput-object p2, p0, Lo/UsageStats$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e()Ljava/io/File;
    .locals 3

    .line 28
    iget-object v0, p0, Lo/UsageStats$3;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 32
    :cond_0
    iget-object v1, p0, Lo/UsageStats$3;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 33
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2

    :cond_1
    return-object v0
.end method
