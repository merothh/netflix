.class final Lo/MediaControlView2$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaControlView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "StateListAnimator"
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Ljava/lang/Integer;

.field private final d:Ljava/lang/String;

.field final synthetic e:Lo/MediaControlView2;

.field private final f:Lo/MediaControlView2$StateListAnimator;


# direct methods
.method public constructor <init>(Lo/MediaControlView2;Ljava/lang/String;Ljava/lang/Integer;ZZLo/MediaControlView2$StateListAnimator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "ZZ",
            "Lo/MediaControlView2$StateListAnimator;",
            ")V"
        }
    .end annotation

    const-string v0, "tag"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lo/MediaControlView2$StateListAnimator;->e:Lo/MediaControlView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo/MediaControlView2$StateListAnimator;->d:Ljava/lang/String;

    iput-object p3, p0, Lo/MediaControlView2$StateListAnimator;->c:Ljava/lang/Integer;

    iput-boolean p4, p0, Lo/MediaControlView2$StateListAnimator;->a:Z

    iput-boolean p5, p0, Lo/MediaControlView2$StateListAnimator;->b:Z

    iput-object p6, p0, Lo/MediaControlView2$StateListAnimator;->f:Lo/MediaControlView2$StateListAnimator;

    .line 62
    invoke-static {p1}, Lo/MediaControlView2;->d(Lo/MediaControlView2;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lo/MediaControlView2$StateListAnimator;->d:Ljava/lang/String;

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lo/MediaControlView2;Ljava/lang/String;Ljava/lang/Integer;ZZLo/MediaControlView2$StateListAnimator;ILo/amc;)V
    .locals 9

    and-int/lit8 v0, p7, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 55
    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    and-int/lit8 v0, p7, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    move v6, p4

    :goto_1
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_2

    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    move v7, p5

    :goto_2
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_3

    .line 58
    move-object v0, v1

    check-cast v0, Lo/MediaControlView2$StateListAnimator;

    move-object v8, v0

    goto :goto_3

    :cond_3
    move-object v8, p6

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Lo/MediaControlView2$StateListAnimator;-><init>(Lo/MediaControlView2;Ljava/lang/String;Ljava/lang/Integer;ZZLo/MediaControlView2$StateListAnimator;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lo/MediaControlView2$StateListAnimator;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lo/MediaControlView2$StateListAnimator;->a:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lo/MediaControlView2$StateListAnimator;->b:Z

    return v0
.end method

.method public final d()Ljava/lang/Integer;
    .locals 1

    .line 55
    iget-object v0, p0, Lo/MediaControlView2$StateListAnimator;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public final e()V
    .locals 5

    .line 66
    sget-object v0, Lo/MediaControlView2;->b:Lo/MediaControlView2$Application;

    check-cast v0, Lo/MessagePdu;

    .line 67
    iget-object v0, p0, Lo/MediaControlView2$StateListAnimator;->e:Lo/MediaControlView2;

    iget-boolean v1, p0, Lo/MediaControlView2$StateListAnimator;->b:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lo/MediaControlView2;->setRepeatCount(I)V

    .line 68
    iget-object v0, p0, Lo/MediaControlView2$StateListAnimator;->e:Lo/MediaControlView2;

    iget-object v1, p0, Lo/MediaControlView2$StateListAnimator;->d:Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lo/ImageButton;->b(Lo/ImageButton;Ljava/lang/String;IILjava/lang/Object;)Z

    return-void
.end method

.method public final f()Lo/MediaControlView2$StateListAnimator;
    .locals 1

    .line 58
    iget-object v0, p0, Lo/MediaControlView2$StateListAnimator;->f:Lo/MediaControlView2$StateListAnimator;

    return-object v0
.end method
