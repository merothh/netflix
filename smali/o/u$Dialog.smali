.class public final Lo/u$Dialog;
.super Lo/u;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/u$Dialog$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/u<",
        "Landroid/app/Activity;",
        "Lo/u$Dialog$TaskDescription;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lo/u$Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Lo/u$Dialog;

    invoke-direct {v0}, Lo/u$Dialog;-><init>()V

    sput-object v0, Lo/u$Dialog;->d:Lo/u$Dialog;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "PlayerUI"

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, v0, v1}, Lo/u;-><init>(Ljava/lang/String;Lo/amc;)V

    return-void
.end method
