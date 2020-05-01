.class public final Lo/u$Fragment;
.super Lo/u;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Fragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/u$Fragment$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/u<",
        "Landroid/app/Activity;",
        "Lo/u$Fragment$TaskDescription;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lo/u$Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    new-instance v0, Lo/u$Fragment;

    invoke-direct {v0}, Lo/u$Fragment;-><init>()V

    sput-object v0, Lo/u$Fragment;->e:Lo/u$Fragment;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "PlayerUIFromPostPlay"

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, v0, v1}, Lo/u;-><init>(Ljava/lang/String;Lo/amc;)V

    return-void
.end method
