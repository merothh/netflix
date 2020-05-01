.class public final Lo/u$TaskDescription;
.super Lo/u;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/u$TaskDescription$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/u<",
        "Landroid/app/Activity;",
        "Lo/u$TaskDescription$StateListAnimator;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lo/u$TaskDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lo/u$TaskDescription;

    invoke-direct {v0}, Lo/u$TaskDescription;-><init>()V

    sput-object v0, Lo/u$TaskDescription;->e:Lo/u$TaskDescription;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "ExtrasFeed"

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, v0, v1}, Lo/u;-><init>(Ljava/lang/String;Lo/amc;)V

    return-void
.end method
