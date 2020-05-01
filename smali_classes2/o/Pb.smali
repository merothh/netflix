.class public Lo/Pb;
.super Lo/CookieSyncManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Pb$StateListAnimator;
    }
.end annotation


# static fields
.field public static final b:Lo/Pb$StateListAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Pb$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Pb$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/Pb;->b:Lo/Pb$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lo/CookieSyncManager;-><init>()V

    return-void
.end method

.method public static final j()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lo/Pb;->b:Lo/Pb$StateListAnimator;

    invoke-virtual {v0}, Lo/Pb$StateListAnimator;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 19
    new-instance v0, Lo/Pg;

    invoke-direct {v0}, Lo/Pg;-><init>()V

    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method protected f()I
    .locals 1

    .line 23
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->bB:I

    return v0
.end method

.method public getUiScreen()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 21
    sget-object v0, Lcom/netflix/cl/model/AppView;->notificationSelector:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method
