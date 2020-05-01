.class public final Lo/Tk$TaskDescription;
.super Lo/Tk;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Tk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# instance fields
.field private final b:Z

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lo/Tk;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/Tk$TaskDescription;->c:Ljava/lang/String;

    iput-boolean p2, p0, Lo/Tk$TaskDescription;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZILo/amc;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lo/Tk$TaskDescription;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lo/Tk$TaskDescription;->b:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lo/Tk$TaskDescription;->c:Ljava/lang/String;

    return-object v0
.end method
