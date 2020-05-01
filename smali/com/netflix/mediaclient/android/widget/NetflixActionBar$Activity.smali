.class public abstract Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/android/widget/NetflixActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Activity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;,
        Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$TaskDescription;
    }
.end annotation


# static fields
.field public static final b:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$TaskDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->b:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()I
.end method

.method public abstract c()I
.end method

.method public abstract d()I
.end method

.method public abstract e()Ljava/lang/CharSequence;
.end method

.method public abstract f()Z
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract h()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;
.end method

.method public abstract i()Z
.end method

.method public abstract j()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract k()Landroid/view/View;
.end method

.method public abstract l()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract m()Ljava/lang/CharSequence;
.end method

.method public abstract n()Z
.end method

.method public abstract o()Lo/Fragment$StateListAnimator;
.end method

.method public abstract p()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Activity<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method public abstract q()Z
.end method

.method public abstract r()I
.end method

.method public abstract t()I
.end method
