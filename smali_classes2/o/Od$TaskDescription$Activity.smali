.class public final Lo/Od$TaskDescription$Activity;
.super Lo/Od$TaskDescription;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Od$TaskDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# static fields
.field public static final a:Lo/Od$TaskDescription$Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 139
    new-instance v0, Lo/Od$TaskDescription$Activity;

    invoke-direct {v0}, Lo/Od$TaskDescription$Activity;-><init>()V

    sput-object v0, Lo/Od$TaskDescription$Activity;->a:Lo/Od$TaskDescription$Activity;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, v0}, Lo/Od$TaskDescription;-><init>(Lo/amc;)V

    return-void
.end method
