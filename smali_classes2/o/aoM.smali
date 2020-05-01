.class public final Lo/aoM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aoO;


# instance fields
.field private final a:Lo/ape;


# direct methods
.method public constructor <init>(Lo/ape;)V
    .locals 0

    .line 1375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/aoM;->a:Lo/ape;

    return-void
.end method


# virtual methods
.method public au_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Lo/ape;
    .locals 1

    .line 1376
    iget-object v0, p0, Lo/aoM;->a:Lo/ape;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1379
    invoke-static {}, Lo/aoo;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/aoM;->e()Lo/ape;

    move-result-object v0

    const-string v1, "New"

    invoke-virtual {v0, v1}, Lo/ape;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
