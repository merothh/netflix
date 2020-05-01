.class public final Lo/abD;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/abD$StateListAnimator;
    }
.end annotation


# static fields
.field public static final b:Lo/abD$StateListAnimator;

# The value of this static final field might be set in the static constructor
.field private static final e:Ljava/lang/String; = "SignupUtilities"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/abD$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/abD$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/abD;->b:Lo/abD$StateListAnimator;

    const-string v0, "SignupUtilities"

    .line 36
    sput-object v0, Lo/abD;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic b()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lo/abD;->e:Ljava/lang/String;

    return-object v0
.end method
