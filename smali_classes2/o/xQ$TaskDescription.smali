.class abstract Lo/xQ$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aeL$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/xQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "TaskDescription"
.end annotation


# instance fields
.field private final b:Lo/xQ$ActionBar;


# direct methods
.method public constructor <init>(Lo/xQ$ActionBar;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lo/xQ$TaskDescription;->b:Lo/xQ$ActionBar;

    return-void
.end method


# virtual methods
.method public c()Lo/xQ$ActionBar;
    .locals 1

    .line 138
    iget-object v0, p0, Lo/xQ$TaskDescription;->b:Lo/xQ$ActionBar;

    return-object v0
.end method
