.class public final Lo/UP$IntentSender;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntentSender"
.end annotation


# static fields
.field public static final a:Lo/UP$IntentSender;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lo/UP$IntentSender;

    invoke-direct {v0}, Lo/UP$IntentSender;-><init>()V

    sput-object v0, Lo/UP$IntentSender;->a:Lo/UP$IntentSender;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    return-void
.end method
