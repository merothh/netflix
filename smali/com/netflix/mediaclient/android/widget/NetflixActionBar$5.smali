.class public final Lcom/netflix/mediaclient/android/widget/NetflixActionBar$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/android/widget/NetflixActionBar;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/QuickContactBadge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$5;->c:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 183
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$5;->c:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->d()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;)V

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    return-void
.end method
