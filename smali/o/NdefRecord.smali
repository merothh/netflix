.class public final Lo/NdefRecord;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/NdefRecord$StateListAnimator;
    }
.end annotation


# static fields
.field public static final b:Lo/NdefRecord$StateListAnimator;


# instance fields
.field private final a:I

.field private final c:Lo/aka;

.field private final d:Landroid/view/View;

.field private final e:Ljava/lang/Runnable;

.field private final i:Landroid/content/Context;

.field private final j:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/NdefRecord$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/NdefRecord$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/NdefRecord;->b:Lo/NdefRecord$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILandroid/content/Context;J)V
    .locals 1

    const-string v0, "destinationView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/NdefRecord;->d:Landroid/view/View;

    iput p2, p0, Lo/NdefRecord;->a:I

    iput-object p3, p0, Lo/NdefRecord;->i:Landroid/content/Context;

    iput-wide p4, p0, Lo/NdefRecord;->j:J

    .line 30
    new-instance p1, Lcom/netflix/android/components/NetflixAnimatedVectorDrawableWrapper$animatedVectorDrawableCompat$2;

    invoke-direct {p1, p0}, Lcom/netflix/android/components/NetflixAnimatedVectorDrawableWrapper$animatedVectorDrawableCompat$2;-><init>(Lo/NdefRecord;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/NdefRecord;->c:Lo/aka;

    .line 44
    new-instance p1, Lo/NdefRecord$Activity;

    invoke-direct {p1, p0}, Lo/NdefRecord$Activity;-><init>(Lo/NdefRecord;)V

    check-cast p1, Ljava/lang/Runnable;

    iput-object p1, p0, Lo/NdefRecord;->e:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;ILandroid/content/Context;JILo/amc;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const-wide/16 p4, 0x96

    :cond_0
    move-wide v4, p4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 23
    invoke-direct/range {v0 .. v5}, Lo/NdefRecord;-><init>(Landroid/view/View;ILandroid/content/Context;J)V

    return-void
.end method

.method public static final synthetic a(Lo/NdefRecord;)I
    .locals 0

    .line 19
    iget p0, p0, Lo/NdefRecord;->a:I

    return p0
.end method

.method private final a()Lo/ECPrivateKeySpec;
    .locals 1

    iget-object v0, p0, Lo/NdefRecord;->c:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ECPrivateKeySpec;

    return-object v0
.end method

.method public static final synthetic b(Lo/NdefRecord;)Landroid/view/View;
    .locals 0

    .line 19
    iget-object p0, p0, Lo/NdefRecord;->d:Landroid/view/View;

    return-object p0
.end method

.method private final c()V
    .locals 3

    .line 54
    invoke-direct {p0}, Lo/NdefRecord;->a()Lo/ECPrivateKeySpec;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v1, p0, Lo/NdefRecord;->d:Landroid/view/View;

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 56
    invoke-virtual {v0}, Lo/ECPrivateKeySpec;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    invoke-virtual {v0}, Lo/ECPrivateKeySpec;->start()V

    :cond_0
    return-void
.end method

.method public static final synthetic d(Lo/NdefRecord;)Landroid/content/Context;
    .locals 0

    .line 19
    iget-object p0, p0, Lo/NdefRecord;->i:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic e(Lo/NdefRecord;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lo/NdefRecord;->c()V

    return-void
.end method

.method private final g()V
    .locals 2

    .line 63
    iget-object v0, p0, Lo/NdefRecord;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 64
    instance-of v1, v0, Lo/ECPrivateKeySpec;

    if-eqz v1, :cond_1

    .line 65
    check-cast v0, Lo/ECPrivateKeySpec;

    invoke-virtual {v0}, Lo/ECPrivateKeySpec;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v0}, Lo/ECPrivateKeySpec;->stop()V

    .line 68
    :cond_0
    iget-object v0, p0, Lo/NdefRecord;->d:Landroid/view/View;

    const/4 v1, 0x0

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 73
    iget-object v0, p0, Lo/NdefRecord;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lo/adX;->c(Ljava/lang/Runnable;)V

    .line 74
    iget-object v0, p0, Lo/NdefRecord;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 75
    sget-object v0, Lo/NdefRecord;->b:Lo/NdefRecord$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    goto :goto_0

    .line 77
    :cond_0
    sget-object v0, Lo/NdefRecord;->b:Lo/NdefRecord$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 78
    iget-object v0, p0, Lo/NdefRecord;->e:Ljava/lang/Runnable;

    iget-wide v1, p0, Lo/NdefRecord;->j:J

    invoke-static {v0, v1, v2}, Lo/adX;->b(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public final d()V
    .locals 1

    .line 90
    sget-object v0, Lo/NdefRecord;->b:Lo/NdefRecord$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 91
    invoke-virtual {p0}, Lo/NdefRecord;->e()V

    return-void
.end method

.method public final e()V
    .locals 2

    .line 83
    sget-object v0, Lo/NdefRecord;->b:Lo/NdefRecord$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 84
    iget-object v0, p0, Lo/NdefRecord;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lo/NdefRecord;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lo/adX;->c(Ljava/lang/Runnable;)V

    .line 86
    invoke-direct {p0}, Lo/NdefRecord;->g()V

    return-void
.end method
