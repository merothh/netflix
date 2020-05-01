.class final Lo/Ndef;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;


# instance fields
.field private final a:I

.field private final d:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo/Ndef;->a:I

    iput p2, p0, Lo/Ndef;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 387
    iget v0, p0, Lo/Ndef;->d:I

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 375
    invoke-virtual {p0}, Lo/Ndef;->e()Z

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .line 383
    iget v0, p0, Lo/Ndef;->a:I

    return v0
.end method

.method public e()Z
    .locals 1

    .line 379
    invoke-virtual {p0}, Lo/Ndef;->d()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
