.class Lo/Am$Application$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Am$Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskDescription"
.end annotation


# static fields
.field private static b:I


# instance fields
.field private final c:I

.field private final e:Lo/zU;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lo/zU;)V
    .locals 1

    .line 2271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2272
    sget v0, Lo/Am$Application$TaskDescription;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lo/Am$Application$TaskDescription;->b:I

    .line 2273
    sget v0, Lo/Am$Application$TaskDescription;->b:I

    iput v0, p0, Lo/Am$Application$TaskDescription;->c:I

    .line 2274
    iput-object p1, p0, Lo/Am$Application$TaskDescription;->e:Lo/zU;

    return-void
.end method


# virtual methods
.method public d()Lo/zU;
    .locals 1

    .line 2281
    iget-object v0, p0, Lo/Am$Application$TaskDescription;->e:Lo/zU;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 2277
    iget v0, p0, Lo/Am$Application$TaskDescription;->c:I

    return v0
.end method
