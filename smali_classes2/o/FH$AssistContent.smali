.class public final Lo/FH$AssistContent;
.super Lo/FH;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssistContent"
.end annotation


# static fields
.field public static final c:Lo/FH$AssistContent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lo/FH$AssistContent;

    invoke-direct {v0}, Lo/FH$AssistContent;-><init>()V

    sput-object v0, Lo/FH$AssistContent;->c:Lo/FH$AssistContent;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Lo/FH;-><init>(Lo/amc;)V

    return-void
.end method
