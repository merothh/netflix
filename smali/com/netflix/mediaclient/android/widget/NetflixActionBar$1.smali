.class public final Lcom/netflix/mediaclient/android/widget/NetflixActionBar$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Magnifier$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/android/widget/NetflixActionBar;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/QuickContactBadge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$1;->d:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$1;->d:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->d()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$1;->d:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
