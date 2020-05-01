.class public final Lo/jP;
.super Lo/jL;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/jP$Activity;
    }
.end annotation


# static fields
.field public static final b:Lo/jP$Activity;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/jP$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/jP$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/jP;->b:Lo/jP$Activity;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "skipByDelta"

    .line 6
    invoke-direct {p0, p1, v0, p3}, Lo/jL;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput p2, p0, Lo/jP;->e:I

    return-void
.end method


# virtual methods
.method public b()Lorg/json/JSONObject;
    .locals 3

    .line 12
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 13
    iget v1, p0, Lo/jP;->e:I

    const-string v2, "delta"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method
