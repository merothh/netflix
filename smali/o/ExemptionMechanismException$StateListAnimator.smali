.class public final Lo/ExemptionMechanismException$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/anb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ExemptionMechanismException;->d(Landroid/view/ViewGroup;)Lo/anb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/anb<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/ExemptionMechanismException;

.field final synthetic e:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lo/ExemptionMechanismException;Landroid/view/ViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lo/ExemptionMechanismException$StateListAnimator;->a:Lo/ExemptionMechanismException;

    iput-object p2, p0, Lo/ExemptionMechanismException$StateListAnimator;->e:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lo/ExemptionMechanismException$StateListAnimator;->a:Lo/ExemptionMechanismException;

    iget-object v1, p0, Lo/ExemptionMechanismException$StateListAnimator;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lo/ExemptionMechanismException;->a(Landroid/view/ViewGroup;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
