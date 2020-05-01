.class public final Lo/DC$ComponentCallbacks2;
.super Lo/DC;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComponentCallbacks2"
.end annotation


# instance fields
.field private final b:I

.field private final c:F

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(FLjava/lang/String;I)V
    .locals 1

    const-string v0, "titleInfoText"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 227
    invoke-direct {p0, v0}, Lo/DC;-><init>(Lo/amc;)V

    iput p1, p0, Lo/DC$ComponentCallbacks2;->c:F

    iput-object p2, p0, Lo/DC$ComponentCallbacks2;->d:Ljava/lang/String;

    iput p3, p0, Lo/DC$ComponentCallbacks2;->b:I

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lo/DC$ComponentCallbacks2;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()F
    .locals 1

    .line 224
    iget v0, p0, Lo/DC$ComponentCallbacks2;->c:F

    return v0
.end method

.method public final e()I
    .locals 1

    .line 226
    iget v0, p0, Lo/DC$ComponentCallbacks2;->b:I

    return v0
.end method
