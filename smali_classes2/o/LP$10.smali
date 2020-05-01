.class Lo/LP$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Mi$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/LP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/LP;


# direct methods
.method constructor <init>(Lo/LP;)V
    .locals 0

    .line 1174
    iput-object p1, p0, Lo/LP$10;->d:Lo/LP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    .line 1177
    iget-object v0, p0, Lo/LP$10;->d:Lo/LP;

    invoke-virtual {v0}, Lo/LP;->F()I

    move-result v0

    return v0
.end method

.method public e(I)V
    .locals 1

    .line 1182
    invoke-static {}, Lo/LP;->J()Lo/LP$StateListAnimator;

    move-result-object v0

    iput p1, v0, Lo/LP$StateListAnimator;->e:I

    return-void
.end method
