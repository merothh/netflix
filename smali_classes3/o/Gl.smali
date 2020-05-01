.class public Lo/Gl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hR;


# instance fields
.field private b:Lo/hK;


# direct methods
.method public constructor <init>(Lo/hK;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lo/Gl;->b:Lo/hK;

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

    .line 36
    iget-object v0, p0, Lo/Gl;->b:Lo/hK;

    return-object v0
.end method

.method public e()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method
