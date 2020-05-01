.class public final Lo/XJ$Application;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/XJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# static fields
.field public static final d:Lo/XJ$Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lo/XJ$Application;

    invoke-direct {v0}, Lo/XJ$Application;-><init>()V

    sput-object v0, Lo/XJ$Application;->d:Lo/XJ$Application;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lo/Ai;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 46
    sget-object p1, Lo/XJ;->c:Lo/XJ;

    check-cast p1, Lo/MessagePdu;

    return-void
.end method
