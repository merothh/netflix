.class public final Lo/apb$ActionBar;
.super Lo/apD$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/apb;->c(Ljava/lang/Object;Lo/ape;Lo/aoX;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lo/apb;

.field final synthetic e:Lo/apD;


# direct methods
.method public constructor <init>(Lo/apD;Lo/apD;Lo/apb;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lo/apb$ActionBar;->e:Lo/apD;

    iput-object p3, p0, Lo/apb$ActionBar;->b:Lo/apb;

    iput-object p4, p0, Lo/apb$ActionBar;->a:Ljava/lang/Object;

    .line 86
    invoke-direct {p0, p2}, Lo/apD$StateListAnimator;-><init>(Lo/apD;)V

    return-void
.end method


# virtual methods
.method public synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 86
    check-cast p1, Lo/apD;

    invoke-virtual {p0, p1}, Lo/apb$ActionBar;->e(Lo/apD;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Lo/apD;)Ljava/lang/Object;
    .locals 1

    .line 658
    iget-object p1, p0, Lo/apb$ActionBar;->b:Lo/apb;

    invoke-virtual {p1}, Lo/apb;->k()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lo/apb$ActionBar;->a:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-static {}, Lo/apE;->b()Ljava/lang/Object;

    move-result-object p1

    :goto_1
    return-object p1
.end method
