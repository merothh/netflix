.class final Lo/Nb$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Nb;->c(Lo/AnalogClock;Lo/Nd;Lo/Nb$Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Nb$Application;

.field final synthetic c:Lo/AnalogClock;


# direct methods
.method constructor <init>(Lo/Nb$Application;Lo/AnalogClock;)V
    .locals 0

    iput-object p1, p0, Lo/Nb$StateListAnimator;->a:Lo/Nb$Application;

    iput-object p2, p0, Lo/Nb$StateListAnimator;->c:Lo/AnalogClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 146
    iget-object p1, p0, Lo/Nb$StateListAnimator;->a:Lo/Nb$Application;

    iget-object v0, p0, Lo/Nb$StateListAnimator;->c:Lo/AnalogClock;

    invoke-interface {p1, v0}, Lo/Nb$Application;->d(Lo/AnalogClock;)V

    return-void
.end method
