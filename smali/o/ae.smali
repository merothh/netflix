.class public final Lo/ae;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final d:Lcom/netflix/mediaclient/storage/db/AppHistoryDb;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lcom/netflix/mediaclient/storage/db/AppHistoryDb;->d:Lcom/netflix/mediaclient/storage/db/AppHistoryDb$Activity;

    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 60
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 23
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/storage/db/AppHistoryDb$Activity;->c(Landroid/content/Context;)Lcom/netflix/mediaclient/storage/db/AppHistoryDb;

    move-result-object v0

    iput-object v0, p0, Lo/ae;->d:Lcom/netflix/mediaclient/storage/db/AppHistoryDb;

    const/4 v0, 0x2

    .line 24
    iput v0, p0, Lo/ae;->a:I

    const-string v0, "watchRules"

    .line 25
    iput-object v0, p0, Lo/ae;->b:Ljava/lang/String;

    return-void
.end method
