.class public final Lo/u$StateListAnimator;
.super Lo/u;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/u$StateListAnimator$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/u<",
        "Landroid/app/Activity;",
        "Lo/u$StateListAnimator$Activity;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lo/u$StateListAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Lo/u$StateListAnimator;

    invoke-direct {v0}, Lo/u$StateListAnimator;-><init>()V

    sput-object v0, Lo/u$StateListAnimator;->e:Lo/u$StateListAnimator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "ExtrasPost"

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, v0, v1}, Lo/u;-><init>(Ljava/lang/String;Lo/amc;)V

    return-void
.end method
