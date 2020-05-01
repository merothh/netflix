.class public final Lo/ViewOverlay$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ViewOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# instance fields
.field private a:I

.field private final b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:I

.field private h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZLjava/lang/String;II)V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lo/ViewOverlay$Application;->b:Ljava/lang/String;

    .line 115
    iput p2, p0, Lo/ViewOverlay$Application;->a:I

    .line 116
    iput-boolean p3, p0, Lo/ViewOverlay$Application;->c:Z

    .line 117
    iput-object p4, p0, Lo/ViewOverlay$Application;->d:Ljava/lang/String;

    .line 118
    iput p5, p0, Lo/ViewOverlay$Application;->e:I

    .line 119
    iput p6, p0, Lo/ViewOverlay$Application;->h:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lo/ViewOverlay$Application;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 139
    iget v0, p0, Lo/ViewOverlay$Application;->e:I

    return v0
.end method

.method public c()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lo/ViewOverlay$Application;->c:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lo/ViewOverlay$Application;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 127
    iget v0, p0, Lo/ViewOverlay$Application;->a:I

    return v0
.end method

.method public g()I
    .locals 1

    .line 143
    iget v0, p0, Lo/ViewOverlay$Application;->h:I

    return v0
.end method
