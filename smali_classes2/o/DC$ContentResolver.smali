.class public final Lo/DC$ContentResolver;
.super Lo/DC;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContentResolver"
.end annotation


# instance fields
.field private final b:Ljava/lang/String;

.field private final e:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1

    const-string v0, "videoTitle"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, v0}, Lo/DC;-><init>(Lo/amc;)V

    iput-boolean p1, p0, Lo/DC$ContentResolver;->e:Z

    iput-object p2, p0, Lo/DC$ContentResolver;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lo/DC$ContentResolver;->e:Z

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lo/DC$ContentResolver;->b:Ljava/lang/String;

    return-object v0
.end method
