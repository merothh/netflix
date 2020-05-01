.class public final Lo/Registrant$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Registrant;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Registrant;

.field private c:I


# direct methods
.method constructor <init>(Lo/Registrant;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lo/Registrant$4;->b:Lo/Registrant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    .line 122
    sget-object p1, Lo/Registrant;->a:Lo/Registrant$TaskDescription;

    check-cast p1, Lo/MessagePdu;

    .line 123
    iget p1, p0, Lo/Registrant$4;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lo/Registrant$4;->c:I

    .line 124
    iget p1, p0, Lo/Registrant$4;->c:I

    if-nez p1, :cond_1

    .line 125
    iget-object p1, p0, Lo/Registrant$4;->b:Lo/Registrant;

    invoke-static {p1}, Lo/Registrant;->a(Lo/Registrant;)Lo/alB;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/alB;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/akj;

    .line 126
    :cond_0
    iget-object p1, p0, Lo/Registrant$4;->b:Lo/Registrant;

    const/4 p2, 0x0

    check-cast p2, Lo/alB;

    invoke-static {p1, p2}, Lo/Registrant;->c(Lo/Registrant;Lo/alB;)V

    :cond_1
    return-void
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    .line 117
    iget p1, p0, Lo/Registrant$4;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/Registrant$4;->c:I

    .line 118
    sget-object p1, Lo/Registrant;->a:Lo/Registrant$TaskDescription;

    check-cast p1, Lo/MessagePdu;

    return-void
.end method
