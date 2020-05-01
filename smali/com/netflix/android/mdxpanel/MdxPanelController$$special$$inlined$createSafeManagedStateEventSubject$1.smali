.class public final Lcom/netflix/android/mdxpanel/MdxPanelController$$special$$inlined$createSafeManagedStateEventSubject$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ClassCircularityError;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/android/mdxpanel/MdxPanelController;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Lo/UnicodeScript;Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lio/reactivex/subjects/Subject;


# direct methods
.method public constructor <init>(Lio/reactivex/subjects/Subject;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$$special$$inlined$createSafeManagedStateEventSubject$1;->c:Lio/reactivex/subjects/Subject;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final completeSubject()V
    .locals 1
    .annotation runtime Lo/Double;
        c = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$$special$$inlined$createSafeManagedStateEventSubject$1;->c:Lio/reactivex/subjects/Subject;

    invoke-virtual {v0}, Lio/reactivex/subjects/Subject;->onComplete()V

    return-void
.end method
