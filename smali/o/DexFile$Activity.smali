.class public Lo/DexFile$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DexFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Activity"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Landroid/net/Uri;

.field private final d:Z

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;IIZI)V
    .locals 0

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    invoke-static {p1}, Lo/CharArrayWriter;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lo/DexFile$Activity;->c:Landroid/net/Uri;

    .line 348
    iput p2, p0, Lo/DexFile$Activity;->b:I

    .line 349
    iput p3, p0, Lo/DexFile$Activity;->a:I

    .line 350
    iput-boolean p4, p0, Lo/DexFile$Activity;->d:Z

    .line 351
    iput p5, p0, Lo/DexFile$Activity;->e:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 388
    iget v0, p0, Lo/DexFile$Activity;->e:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 372
    iget v0, p0, Lo/DexFile$Activity;->a:I

    return v0
.end method

.method public c()Z
    .locals 1

    .line 379
    iget-boolean v0, p0, Lo/DexFile$Activity;->d:Z

    return v0
.end method

.method public d()I
    .locals 1

    .line 365
    iget v0, p0, Lo/DexFile$Activity;->b:I

    return v0
.end method

.method public e()Landroid/net/Uri;
    .locals 1

    .line 358
    iget-object v0, p0, Lo/DexFile$Activity;->c:Landroid/net/Uri;

    return-object v0
.end method
