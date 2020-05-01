.class public final Lo/Dr$StateListAnimator;
.super Lo/Dr;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Dr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# instance fields
.field private final a:I

.field private final d:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Window;I)V
    .locals 1

    const-string v0, "window"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lo/Dr;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/Dr$StateListAnimator;->d:Landroid/view/Window;

    iput p2, p0, Lo/Dr$StateListAnimator;->a:I

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/Window;
    .locals 1

    .line 8
    iget-object v0, p0, Lo/Dr$StateListAnimator;->d:Landroid/view/Window;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 8
    iget v0, p0, Lo/Dr$StateListAnimator;->a:I

    return v0
.end method
