.class public Lo/cN;
.super Ljava/lang/Object;
.source ""


# instance fields
.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lo/cN;->b:Landroid/content/Context;

    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "fastPropertyConfigData"

    const/4 v1, 0x0

    .line 34
    invoke-static {p0, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 35
    invoke-static {p0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 25
    invoke-static {p1}, Lo/cN;->c(Landroid/content/Context;)Z

    move-result p1

    .line 26
    iget-object v0, p0, Lo/cN;->b:Landroid/content/Context;

    const-string v1, "fastPropertyConfigData"

    invoke-static {v0, v1, p2}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 29
    invoke-static {p2}, Lo/cQ;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
