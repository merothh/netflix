.class public Lo/ActivityTransitionState;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:F

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private c:F

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private e:F

.field private f:F

.field private j:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Lo/ActivityTransitionState;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFTT;TT;FFF)",
            "Lo/ActivityTransitionState<",
            "TT;>;"
        }
    .end annotation

    .line 28
    iput p1, p0, Lo/ActivityTransitionState;->e:F

    .line 29
    iput p2, p0, Lo/ActivityTransitionState;->c:F

    .line 30
    iput-object p3, p0, Lo/ActivityTransitionState;->d:Ljava/lang/Object;

    .line 31
    iput-object p4, p0, Lo/ActivityTransitionState;->b:Ljava/lang/Object;

    .line 32
    iput p5, p0, Lo/ActivityTransitionState;->a:F

    .line 33
    iput p6, p0, Lo/ActivityTransitionState;->f:F

    .line 34
    iput p7, p0, Lo/ActivityTransitionState;->j:F

    return-object p0
.end method
