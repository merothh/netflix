.class Lo/ui$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/uj$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ui;->e(Lo/ui$StateListAnimator;Lo/uC;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/ui$StateListAnimator;

.field final synthetic e:Lo/ui;


# direct methods
.method constructor <init>(Lo/ui;Lo/ui$StateListAnimator;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lo/ui$2;->e:Lo/ui;

    iput-object p2, p0, Lo/ui$2;->c:Lo/ui$StateListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 201
    iget-object v0, p0, Lo/ui$2;->e:Lo/ui;

    iget-object v1, p0, Lo/ui$2;->c:Lo/ui$StateListAnimator;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lo/ui;->e(Lo/ui;Lo/ui$StateListAnimator;Z)V

    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 2

    .line 196
    iget-object p1, p0, Lo/ui$2;->e:Lo/ui;

    iget-object v0, p0, Lo/ui$2;->c:Lo/ui$StateListAnimator;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lo/ui;->e(Lo/ui;Lo/ui$StateListAnimator;Z)V

    return-void
.end method
