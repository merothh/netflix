.class final Lo/Registrant$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Registrant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StateListAnimator"
.end annotation


# instance fields
.field private a:Z

.field private final b:Landroid/view/View;

.field private final e:Lo/ImageSwitcher;


# direct methods
.method public constructor <init>(Landroid/view/View;Lo/ImageSwitcher;Z)V
    .locals 1

    const-string v0, "spacer"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Registrant$StateListAnimator;->b:Landroid/view/View;

    iput-object p2, p0, Lo/Registrant$StateListAnimator;->e:Lo/ImageSwitcher;

    iput-boolean p3, p0, Lo/Registrant$StateListAnimator;->a:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Lo/ImageSwitcher;ZILo/amc;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 82
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lo/Registrant$StateListAnimator;-><init>(Landroid/view/View;Lo/ImageSwitcher;Z)V

    return-void
.end method


# virtual methods
.method public final a()Lo/ImageSwitcher;
    .locals 1

    .line 82
    iget-object v0, p0, Lo/Registrant$StateListAnimator;->e:Lo/ImageSwitcher;

    return-object v0
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .line 82
    iget-object v0, p0, Lo/Registrant$StateListAnimator;->b:Landroid/view/View;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lo/Registrant$StateListAnimator;->a:Z

    return v0
.end method

.method public final e(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lo/Registrant$StateListAnimator;->a:Z

    return-void
.end method
