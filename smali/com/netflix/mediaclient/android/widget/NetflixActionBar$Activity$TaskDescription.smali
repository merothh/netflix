.class public final Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 770
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$TaskDescription;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;
    .locals 3

    .line 772
    new-instance v0, Lo/Chronometer$ActionBar;

    invoke-direct {v0}, Lo/Chronometer$ActionBar;-><init>()V

    const/4 v1, 0x1

    .line 773
    invoke-virtual {v0, v1}, Lo/Chronometer$ActionBar;->a(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    const/4 v2, 0x0

    .line 774
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->e(I)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 775
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->e(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 776
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->d(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 777
    sget-object v1, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->a:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 778
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->b(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 779
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->d(I)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 780
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->b(I)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 781
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->c(I)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 782
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->a(I)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 783
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->c(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    return-object v0
.end method
