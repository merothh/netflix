.class public final Lo/amy$TaskDescription;
.super Lo/amy;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/amy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# static fields
.field public static final b:Lo/amy$TaskDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 272
    new-instance v0, Lo/amy$TaskDescription;

    invoke-direct {v0}, Lo/amy$TaskDescription;-><init>()V

    sput-object v0, Lo/amy$TaskDescription;->b:Lo/amy$TaskDescription;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 272
    invoke-direct {p0}, Lo/amy;-><init>()V

    return-void
.end method


# virtual methods
.method public d(I)I
    .locals 1

    .line 273
    sget-object v0, Lo/amy;->e:Lo/amy$Application;

    invoke-virtual {v0, p1}, Lo/amy$Application;->d(I)I

    move-result p1

    return p1
.end method
