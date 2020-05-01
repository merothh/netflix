.class public final Lo/AdapterViewFlipper$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AdapterViewFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private final c:Lo/AdapterViewFlipper$Activity;

.field private final d:Landroid/net/Uri;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lo/AdapterViewFlipper$StateListAnimator;-><init>(Landroid/net/Uri;Landroid/net/Uri;Lo/AdapterViewFlipper$Activity;Ljava/lang/String;ILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Lo/AdapterViewFlipper$Activity;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AdapterViewFlipper$StateListAnimator;->d:Landroid/net/Uri;

    iput-object p2, p0, Lo/AdapterViewFlipper$StateListAnimator;->a:Landroid/net/Uri;

    iput-object p3, p0, Lo/AdapterViewFlipper$StateListAnimator;->c:Lo/AdapterViewFlipper$Activity;

    iput-object p4, p0, Lo/AdapterViewFlipper$StateListAnimator;->e:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Lo/AdapterViewFlipper$Activity;Ljava/lang/String;ILo/amc;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 48
    move-object p1, v0

    check-cast p1, Landroid/net/Uri;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 49
    move-object p2, v0

    check-cast p2, Landroid/net/Uri;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 50
    move-object p3, v0

    check-cast p3, Lo/AdapterViewFlipper$Activity;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 51
    move-object p4, v0

    check-cast p4, Ljava/lang/String;

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lo/AdapterViewFlipper$StateListAnimator;-><init>(Landroid/net/Uri;Landroid/net/Uri;Lo/AdapterViewFlipper$Activity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .locals 1

    .line 48
    iget-object v0, p0, Lo/AdapterViewFlipper$StateListAnimator;->d:Landroid/net/Uri;

    return-object v0
.end method

.method public final b()Lo/AdapterViewFlipper$Activity;
    .locals 1

    .line 50
    iget-object v0, p0, Lo/AdapterViewFlipper$StateListAnimator;->c:Lo/AdapterViewFlipper$Activity;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lo/AdapterViewFlipper$StateListAnimator;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Landroid/net/Uri;
    .locals 1

    .line 49
    iget-object v0, p0, Lo/AdapterViewFlipper$StateListAnimator;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/AdapterViewFlipper$StateListAnimator;

    if-eqz v0, :cond_0

    check-cast p1, Lo/AdapterViewFlipper$StateListAnimator;

    iget-object v0, p0, Lo/AdapterViewFlipper$StateListAnimator;->d:Landroid/net/Uri;

    iget-object v1, p1, Lo/AdapterViewFlipper$StateListAnimator;->d:Landroid/net/Uri;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/AdapterViewFlipper$StateListAnimator;->a:Landroid/net/Uri;

    iget-object v1, p1, Lo/AdapterViewFlipper$StateListAnimator;->a:Landroid/net/Uri;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/AdapterViewFlipper$StateListAnimator;->c:Lo/AdapterViewFlipper$Activity;

    iget-object v1, p1, Lo/AdapterViewFlipper$StateListAnimator;->c:Lo/AdapterViewFlipper$Activity;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/AdapterViewFlipper$StateListAnimator;->e:Ljava/lang/String;

    iget-object p1, p1, Lo/AdapterViewFlipper$StateListAnimator;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lo/AdapterViewFlipper$StateListAnimator;->d:Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/AdapterViewFlipper$StateListAnimator;->a:Landroid/net/Uri;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/AdapterViewFlipper$StateListAnimator;->c:Lo/AdapterViewFlipper$Activity;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/AdapterViewFlipper$StateListAnimator;->e:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SnapchatStory(backgroundAssetUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/AdapterViewFlipper$StateListAnimator;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stickerAssetUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/AdapterViewFlipper$StateListAnimator;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stickerImageInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/AdapterViewFlipper$StateListAnimator;->c:Lo/AdapterViewFlipper$Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contentUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/AdapterViewFlipper$StateListAnimator;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
