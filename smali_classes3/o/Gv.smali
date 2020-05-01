.class public Lo/Gv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hR;


# instance fields
.field private a:I

.field private c:Lo/hK;


# direct methods
.method constructor <init>(ILo/hK;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lo/Gv;->a:I

    .line 23
    iput-object p2, p0, Lo/Gv;->c:Lo/hK;

    return-void
.end method

.method public constructor <init>(Lo/hK;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, v0, p1}, Lo/Gv;-><init>(ILo/hK;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Runnable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Lo/hK;
    .locals 1

    .line 41
    iget-object v0, p0, Lo/Gv;->c:Lo/hK;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 31
    iget v0, p0, Lo/Gv;->a:I

    return v0
.end method
