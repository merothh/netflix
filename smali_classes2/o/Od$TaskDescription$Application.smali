.class public final Lo/Od$TaskDescription$Application;
.super Lo/Od$TaskDescription;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Od$TaskDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# static fields
.field public static final a:Lo/Od$TaskDescription$Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 138
    new-instance v0, Lo/Od$TaskDescription$Application;

    invoke-direct {v0}, Lo/Od$TaskDescription$Application;-><init>()V

    sput-object v0, Lo/Od$TaskDescription$Application;->a:Lo/Od$TaskDescription$Application;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, v0}, Lo/Od$TaskDescription;-><init>(Lo/amc;)V

    return-void
.end method
