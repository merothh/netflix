.class public Lcom/netflix/mediaclient/ui/offline/TutorialHelper$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ClassCircularityError;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Se;->a(Lo/Se$StateListAnimator;Lo/Bc;Landroidx/recyclerview/widget/RecyclerView;Lo/Am;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Se;


# direct methods
.method public constructor <init>(Lo/Se;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$5;->d:Lo/Se;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1
    .annotation runtime Lo/Double;
        c = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$5;->d:Lo/Se;

    invoke-virtual {v0}, Lo/Se;->c()V

    return-void
.end method
