.class Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lo/QL;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$8;->d:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 496
    check-cast p1, Lo/QL;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$8;->b(Lo/QL;)V

    return-void
.end method

.method public b(Lo/QL;)V
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$8;->d:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->e(Lo/QL;)V

    return-void
.end method
