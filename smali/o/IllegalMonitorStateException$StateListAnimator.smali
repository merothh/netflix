.class final Lo/IllegalMonitorStateException$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/IllegalMonitorStateException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StateListAnimator"
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/IllegalMonitorStateException$Application;",
            ">;"
        }
    .end annotation
.end field

.field final b:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList<",
            "Lo/IllegalMonitorStateException$Application;",
            ">;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lo/IllegalMonitorStateException$StateListAnimator;->b:Landroid/content/Intent;

    .line 81
    iput-object p2, p0, Lo/IllegalMonitorStateException$StateListAnimator;->a:Ljava/util/ArrayList;

    return-void
.end method
