.class public Lo/Factory2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Factory2$TaskDescription;
    }
.end annotation


# static fields
.field private static b:Landroid/util/SparseIntArray;

.field private static final d:[I


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lo/Factory2$TaskDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 195
    fill-array-data v1, :array_0

    sput-object v1, Lo/Factory2;->d:[I

    .line 200
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    .line 274
    sget-object v1, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v2, Lo/PointerIcon$TaskDescription;->bh:I

    const/16 v3, 0x19

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 275
    sget-object v1, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v2, Lo/PointerIcon$TaskDescription;->bj:I

    const/16 v3, 0x1a

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 276
    sget-object v1, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v2, Lo/PointerIcon$TaskDescription;->bn:I

    const/16 v3, 0x1d

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 277
    sget-object v1, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v2, Lo/PointerIcon$TaskDescription;->bl:I

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 278
    sget-object v1, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v2, Lo/PointerIcon$TaskDescription;->bt:I

    const/16 v3, 0x24

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 279
    sget-object v1, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v2, Lo/PointerIcon$TaskDescription;->bq:I

    const/16 v3, 0x23

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 280
    sget-object v1, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v2, Lo/PointerIcon$TaskDescription;->aS:I

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 281
    sget-object v1, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v2, Lo/PointerIcon$TaskDescription;->aO:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 282
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->aQ:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 284
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->bA:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 285
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->bE:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 286
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->aZ:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 287
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->aX:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 288
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->ba:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 289
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->aj:I

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 290
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->bm:I

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 291
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->bo:I

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 292
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->aW:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 293
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->aY:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 294
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->bC:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 295
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->bI:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 296
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->bG:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 297
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->bB:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 298
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->bJ:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 299
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->bD:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 300
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->bx:I

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 301
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->bg:I

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 302
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->bk:I

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 303
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->br:I

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 305
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->be:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 306
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->bu:I

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 307
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->aU:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 308
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->bi:I

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 309
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->bs:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 310
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->bp:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 311
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->aM:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 312
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->aN:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 313
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->aq:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 314
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->as:I

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 315
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->aG:I

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 316
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->aC:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 317
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->at:I

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 318
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->av:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 319
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->an:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 320
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->ao:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 321
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->ar:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 322
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->aw:I

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 323
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->aK:I

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 324
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->aF:I

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 325
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->aD:I

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 326
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->aE:I

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 327
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->aB:I

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 328
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->ay:I

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 329
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->au:I

    const/16 v2, 0x31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 330
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->ax:I

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 331
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->aA:I

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 332
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->az:I

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 333
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->aJ:I

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 334
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->bz:I

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 335
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->bc:I

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 336
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->by:I

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 337
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->bb:I

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 338
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->bv:I

    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 339
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->bf:I

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 340
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->aT:I

    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 341
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->aR:I

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 342
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->aV:I

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 343
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->ap:I

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 345
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->bw:I

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 346
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->bd:I

    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 348
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->aH:I

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 349
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->aL:I

    const/16 v2, 0x48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 350
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->aP:I

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 351
    sget-object v0, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    sget v1, Lo/PointerIcon$TaskDescription;->aI:I

    const/16 v2, 0x4a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/Factory2;->a:Ljava/util/HashMap;

    return-void
.end method

.method private static a(Landroid/content/res/TypedArray;II)I
    .locals 1

    .line 2181
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 2183
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    :cond_0
    return p2
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)Lo/Factory2$TaskDescription;
    .locals 2

    .line 2189
    new-instance v0, Lo/Factory2$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Factory2$TaskDescription;-><init>(Lo/Factory2$3;)V

    .line 2190
    sget-object v1, Lo/PointerIcon$TaskDescription;->ai:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2191
    invoke-direct {p0, v0, p1}, Lo/Factory2;->e(Lo/Factory2$TaskDescription;Landroid/content/res/TypedArray;)V

    .line 2192
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private c(I)Lo/Factory2$TaskDescription;
    .locals 4

    .line 2110
    iget-object v0, p0, Lo/Factory2;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2111
    iget-object v0, p0, Lo/Factory2;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lo/Factory2$TaskDescription;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lo/Factory2$TaskDescription;-><init>(Lo/Factory2$3;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2113
    :cond_0
    iget-object v0, p0, Lo/Factory2;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Factory2$TaskDescription;

    return-object p1
.end method

.method private c(Landroid/view/View;Ljava/lang/String;)[I
    .locals 9

    const-string v0, ","

    .line 2443
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 2444
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2445
    array-length v1, p2

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2447
    :goto_0
    array-length v5, p2

    if-ge v3, v5, :cond_2

    .line 2448
    aget-object v5, p2, v3

    .line 2449
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 2452
    :try_start_0
    const-class v6, Lo/PointerIcon$Application;

    .line 2453
    invoke-virtual {v6, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v7, 0x0

    .line 2454
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_0

    .line 2460
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 2461
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "id"

    .line 2460
    invoke-virtual {v6, v5, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    :cond_0
    if-nez v6, :cond_1

    .line 2464
    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Lo/MenuInflater;

    if-eqz v7, :cond_1

    .line 2465
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Lo/MenuInflater;

    .line 2466
    invoke-virtual {v7, v2, v5}, Lo/MenuInflater;->getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2467
    instance-of v7, v5, Ljava/lang/Integer;

    if-eqz v7, :cond_1

    .line 2468
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_1
    add-int/lit8 v5, v4, 0x1

    .line 2471
    aput v6, v1, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_0

    .line 2473
    :cond_2
    array-length p1, p2

    if-eq v4, p1, :cond_3

    .line 2474
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method private e(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, "undefined"

    return-object p1

    :pswitch_0
    const-string p1, "end"

    return-object p1

    :pswitch_1
    const-string p1, "start"

    return-object p1

    :pswitch_2
    const-string p1, "baseline"

    return-object p1

    :pswitch_3
    const-string p1, "bottom"

    return-object p1

    :pswitch_4
    const-string p1, "top"

    return-object p1

    :pswitch_5
    const-string p1, "right"

    return-object p1

    :pswitch_6
    const-string p1, "left"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private e(Lo/Factory2$TaskDescription;Landroid/content/res/TypedArray;)V
    .locals 7

    .line 2197
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2199
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 2238
    sget-object v3, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    const/high16 v4, 0x3f800000    # 1.0f

    const-string v5, "   "

    const-string v6, "ConstraintSet"

    packed-switch v3, :pswitch_data_2

    .line 2436
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown attribute 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2437
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2436
    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2432
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unused attribute 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2433
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lo/Factory2;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2432
    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2429
    :pswitch_1
    iget-boolean v3, p1, Lo/Factory2$TaskDescription;->aq:Z

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p1, Lo/Factory2$TaskDescription;->aq:Z

    goto/16 :goto_1

    .line 2426
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lo/Factory2$TaskDescription;->as:Ljava/lang/String;

    goto/16 :goto_1

    .line 2423
    :pswitch_3
    iget v3, p1, Lo/Factory2$TaskDescription;->at:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->at:I

    goto/16 :goto_1

    :pswitch_4
    const-string v2, "CURRENTLY UNSUPPORTED"

    .line 2419
    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2416
    :pswitch_5
    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->ap:F

    goto/16 :goto_1

    .line 2413
    :pswitch_6
    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->an:F

    goto/16 :goto_1

    .line 2303
    :pswitch_7
    iget v3, p1, Lo/Factory2$TaskDescription;->A:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->A:F

    goto/16 :goto_1

    .line 2300
    :pswitch_8
    iget v3, p1, Lo/Factory2$TaskDescription;->x:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->x:I

    goto/16 :goto_1

    .line 2297
    :pswitch_9
    iget v3, p1, Lo/Factory2$TaskDescription;->y:I

    invoke-static {p2, v2, v3}, Lo/Factory2;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->y:I

    goto/16 :goto_1

    .line 2365
    :pswitch_a
    iget v3, p1, Lo/Factory2$TaskDescription;->W:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->W:F

    goto/16 :goto_1

    .line 2392
    :pswitch_b
    iget v3, p1, Lo/Factory2$TaskDescription;->ag:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->ag:F

    goto/16 :goto_1

    .line 2389
    :pswitch_c
    iget v3, p1, Lo/Factory2$TaskDescription;->af:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->af:F

    goto/16 :goto_1

    .line 2386
    :pswitch_d
    iget v3, p1, Lo/Factory2$TaskDescription;->ah:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->ah:F

    goto/16 :goto_1

    .line 2383
    :pswitch_e
    iget v3, p1, Lo/Factory2$TaskDescription;->ad:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->ad:F

    goto/16 :goto_1

    .line 2380
    :pswitch_f
    iget v3, p1, Lo/Factory2$TaskDescription;->aa:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->aa:F

    goto/16 :goto_1

    .line 2377
    :pswitch_10
    iget v3, p1, Lo/Factory2$TaskDescription;->Z:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->Z:F

    goto/16 :goto_1

    .line 2374
    :pswitch_11
    iget v3, p1, Lo/Factory2$TaskDescription;->ab:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->ab:F

    goto/16 :goto_1

    .line 2371
    :pswitch_12
    iget v3, p1, Lo/Factory2$TaskDescription;->Y:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->Y:F

    goto/16 :goto_1

    .line 2368
    :pswitch_13
    iget v3, p1, Lo/Factory2$TaskDescription;->ac:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->ac:F

    goto/16 :goto_1

    :pswitch_14
    const/4 v3, 0x1

    .line 2361
    iput-boolean v3, p1, Lo/Factory2$TaskDescription;->X:Z

    .line 2362
    iget v3, p1, Lo/Factory2$TaskDescription;->T:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->T:F

    goto/16 :goto_1

    .line 2358
    :pswitch_15
    iget v3, p1, Lo/Factory2$TaskDescription;->V:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->V:F

    goto/16 :goto_1

    .line 2401
    :pswitch_16
    iget v3, p1, Lo/Factory2$TaskDescription;->U:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->U:I

    goto/16 :goto_1

    .line 2404
    :pswitch_17
    iget v3, p1, Lo/Factory2$TaskDescription;->P:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->P:I

    goto/16 :goto_1

    .line 2395
    :pswitch_18
    iget v3, p1, Lo/Factory2$TaskDescription;->Q:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->Q:F

    goto/16 :goto_1

    .line 2398
    :pswitch_19
    iget v3, p1, Lo/Factory2$TaskDescription;->O:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->O:F

    goto/16 :goto_1

    .line 2407
    :pswitch_1a
    iget v3, p1, Lo/Factory2$TaskDescription;->a:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->a:I

    goto/16 :goto_1

    .line 2327
    :pswitch_1b
    iget v3, p1, Lo/Factory2$TaskDescription;->u:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->u:F

    goto/16 :goto_1

    .line 2252
    :pswitch_1c
    iget v3, p1, Lo/Factory2$TaskDescription;->m:I

    invoke-static {p2, v2, v3}, Lo/Factory2;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->m:I

    goto/16 :goto_1

    .line 2255
    :pswitch_1d
    iget v3, p1, Lo/Factory2$TaskDescription;->o:I

    invoke-static {p2, v2, v3}, Lo/Factory2;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->o:I

    goto/16 :goto_1

    .line 2342
    :pswitch_1e
    iget v3, p1, Lo/Factory2$TaskDescription;->E:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->E:I

    goto/16 :goto_1

    .line 2288
    :pswitch_1f
    iget v3, p1, Lo/Factory2$TaskDescription;->r:I

    invoke-static {p2, v2, v3}, Lo/Factory2;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->r:I

    goto/16 :goto_1

    .line 2285
    :pswitch_20
    iget v3, p1, Lo/Factory2$TaskDescription;->t:I

    invoke-static {p2, v2, v3}, Lo/Factory2;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->t:I

    goto/16 :goto_1

    .line 2336
    :pswitch_21
    iget v3, p1, Lo/Factory2$TaskDescription;->I:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->I:I

    goto/16 :goto_1

    .line 2249
    :pswitch_22
    iget v3, p1, Lo/Factory2$TaskDescription;->l:I

    invoke-static {p2, v2, v3}, Lo/Factory2;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->l:I

    goto/16 :goto_1

    .line 2246
    :pswitch_23
    iget v3, p1, Lo/Factory2$TaskDescription;->i:I

    invoke-static {p2, v2, v3}, Lo/Factory2;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->i:I

    goto/16 :goto_1

    .line 2333
    :pswitch_24
    iget v3, p1, Lo/Factory2$TaskDescription;->G:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->G:I

    goto/16 :goto_1

    .line 2282
    :pswitch_25
    iget v3, p1, Lo/Factory2$TaskDescription;->D:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->D:I

    goto/16 :goto_1

    .line 2243
    :pswitch_26
    iget v3, p1, Lo/Factory2$TaskDescription;->h:I

    invoke-static {p2, v2, v3}, Lo/Factory2;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->h:I

    goto/16 :goto_1

    .line 2240
    :pswitch_27
    iget v3, p1, Lo/Factory2$TaskDescription;->g:I

    invoke-static {p2, v2, v3}, Lo/Factory2;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->g:I

    goto/16 :goto_1

    .line 2330
    :pswitch_28
    iget v3, p1, Lo/Factory2$TaskDescription;->C:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->C:I

    goto/16 :goto_1

    .line 2348
    :pswitch_29
    iget v3, p1, Lo/Factory2$TaskDescription;->d:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->d:I

    goto/16 :goto_1

    .line 2354
    :pswitch_2a
    iget v3, p1, Lo/Factory2$TaskDescription;->K:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->K:I

    .line 2355
    sget-object v2, Lo/Factory2;->d:[I

    iget v3, p1, Lo/Factory2$TaskDescription;->K:I

    aget v2, v2, v3

    iput v2, p1, Lo/Factory2$TaskDescription;->K:I

    goto/16 :goto_1

    .line 2351
    :pswitch_2b
    iget v3, p1, Lo/Factory2$TaskDescription;->c:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->c:I

    goto/16 :goto_1

    .line 2324
    :pswitch_2c
    iget v3, p1, Lo/Factory2$TaskDescription;->v:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->v:F

    goto/16 :goto_1

    .line 2279
    :pswitch_2d
    iget v3, p1, Lo/Factory2$TaskDescription;->f:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->f:F

    goto/16 :goto_1

    .line 2276
    :pswitch_2e
    iget v3, p1, Lo/Factory2$TaskDescription;->j:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->j:I

    goto/16 :goto_1

    .line 2273
    :pswitch_2f
    iget v3, p1, Lo/Factory2$TaskDescription;->e:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->e:I

    goto/16 :goto_1

    .line 2309
    :pswitch_30
    iget v3, p1, Lo/Factory2$TaskDescription;->N:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->N:I

    goto/16 :goto_1

    .line 2318
    :pswitch_31
    iget v3, p1, Lo/Factory2$TaskDescription;->S:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->S:I

    goto/16 :goto_1

    .line 2312
    :pswitch_32
    iget v3, p1, Lo/Factory2$TaskDescription;->J:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->J:I

    goto/16 :goto_1

    .line 2306
    :pswitch_33
    iget v3, p1, Lo/Factory2$TaskDescription;->L:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->L:I

    goto/16 :goto_1

    .line 2321
    :pswitch_34
    iget v3, p1, Lo/Factory2$TaskDescription;->R:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->R:I

    goto :goto_1

    .line 2315
    :pswitch_35
    iget v3, p1, Lo/Factory2$TaskDescription;->M:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->M:I

    goto :goto_1

    .line 2291
    :pswitch_36
    iget v3, p1, Lo/Factory2$TaskDescription;->s:I

    invoke-static {p2, v2, v3}, Lo/Factory2;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->s:I

    goto :goto_1

    .line 2294
    :pswitch_37
    iget v3, p1, Lo/Factory2$TaskDescription;->q:I

    invoke-static {p2, v2, v3}, Lo/Factory2;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->q:I

    goto :goto_1

    .line 2339
    :pswitch_38
    iget v3, p1, Lo/Factory2$TaskDescription;->F:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->F:I

    goto :goto_1

    .line 2270
    :pswitch_39
    iget v3, p1, Lo/Factory2$TaskDescription;->z:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->z:I

    goto :goto_1

    .line 2267
    :pswitch_3a
    iget v3, p1, Lo/Factory2$TaskDescription;->B:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->B:I

    goto :goto_1

    .line 2410
    :pswitch_3b
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lo/Factory2$TaskDescription;->w:Ljava/lang/String;

    goto :goto_1

    .line 2258
    :pswitch_3c
    iget v3, p1, Lo/Factory2$TaskDescription;->k:I

    invoke-static {p2, v2, v3}, Lo/Factory2;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->k:I

    goto :goto_1

    .line 2261
    :pswitch_3d
    iget v3, p1, Lo/Factory2$TaskDescription;->n:I

    invoke-static {p2, v2, v3}, Lo/Factory2;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->n:I

    goto :goto_1

    .line 2345
    :pswitch_3e
    iget v3, p1, Lo/Factory2$TaskDescription;->H:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->H:I

    goto :goto_1

    .line 2264
    :pswitch_3f
    iget v3, p1, Lo/Factory2$TaskDescription;->p:I

    invoke-static {p2, v2, v3}, Lo/Factory2;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Lo/Factory2$TaskDescription;->p:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x45
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(IF)V
    .locals 0

    .line 1807
    invoke-direct {p0, p1}, Lo/Factory2;->c(I)Lo/Factory2$TaskDescription;

    move-result-object p1

    iput p2, p1, Lo/Factory2$TaskDescription;->an:F

    return-void
.end method

.method public a(II)V
    .locals 0

    .line 1727
    invoke-direct {p0, p1}, Lo/Factory2;->c(I)Lo/Factory2$TaskDescription;

    move-result-object p1

    iput p2, p1, Lo/Factory2$TaskDescription;->d:I

    return-void
.end method

.method public a(Lo/MenuInflater;)V
    .locals 1

    .line 789
    invoke-virtual {p0, p1}, Lo/Factory2;->e(Lo/MenuInflater;)V

    const/4 v0, 0x0

    .line 790
    invoke-virtual {p1, v0}, Lo/MenuInflater;->setConstraintSet(Lo/Factory2;)V

    return-void
.end method

.method public a(Lo/TouchDelegate;)V
    .locals 9

    .line 761
    invoke-virtual {p1}, Lo/TouchDelegate;->getChildCount()I

    move-result v0

    .line 762
    iget-object v1, p0, Lo/Factory2;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 764
    invoke-virtual {p1, v1}, Lo/TouchDelegate;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 765
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lo/TouchDelegate$Application;

    .line 767
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 771
    iget-object v5, p0, Lo/Factory2;->a:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 772
    iget-object v5, p0, Lo/Factory2;->a:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lo/Factory2$TaskDescription;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lo/Factory2$TaskDescription;-><init>(Lo/Factory2$3;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    :cond_0
    iget-object v5, p0, Lo/Factory2;->a:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/Factory2$TaskDescription;

    .line 775
    instance-of v6, v2, Lo/Menu;

    if-eqz v6, :cond_1

    .line 776
    check-cast v2, Lo/Menu;

    .line 777
    invoke-static {v5, v2, v4, v3}, Lo/Factory2$TaskDescription;->b(Lo/Factory2$TaskDescription;Lo/Menu;ILo/TouchDelegate$Application;)V

    .line 779
    :cond_1
    invoke-static {v5, v4, v3}, Lo/Factory2$TaskDescription;->b(Lo/Factory2$TaskDescription;ILo/TouchDelegate$Application;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 769
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 1361
    iget-object v0, p0, Lo/Factory2;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(IF)V
    .locals 0

    .line 1497
    invoke-direct {p0, p1}, Lo/Factory2;->c(I)Lo/Factory2$TaskDescription;

    move-result-object p1

    iput p2, p1, Lo/Factory2$TaskDescription;->v:F

    return-void
.end method

.method public b(II)V
    .locals 0

    .line 1770
    invoke-direct {p0, p1}, Lo/Factory2;->c(I)Lo/Factory2$TaskDescription;

    move-result-object p1

    iput p2, p1, Lo/Factory2$TaskDescription;->ak:I

    return-void
.end method

.method public b(III)V
    .locals 0

    .line 1463
    invoke-direct {p0, p1}, Lo/Factory2;->c(I)Lo/Factory2$TaskDescription;

    move-result-object p1

    packed-switch p2, :pswitch_data_0

    .line 1486
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unknown constraint"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1483
    :pswitch_0
    iput p3, p1, Lo/Factory2$TaskDescription;->R:I

    goto :goto_0

    .line 1480
    :pswitch_1
    iput p3, p1, Lo/Factory2$TaskDescription;->S:I

    goto :goto_0

    .line 1478
    :pswitch_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "baseline does not support margins"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1475
    :pswitch_3
    iput p3, p1, Lo/Factory2$TaskDescription;->M:I

    goto :goto_0

    .line 1472
    :pswitch_4
    iput p3, p1, Lo/Factory2$TaskDescription;->N:I

    goto :goto_0

    .line 1469
    :pswitch_5
    iput p3, p1, Lo/Factory2$TaskDescription;->J:I

    goto :goto_0

    .line 1466
    :pswitch_6
    iput p3, p1, Lo/Factory2$TaskDescription;->L:I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(IIIII)V
    .locals 9

    .line 1106
    iget-object v0, p0, Lo/Factory2;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1107
    iget-object v0, p0, Lo/Factory2;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lo/Factory2$TaskDescription;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lo/Factory2$TaskDescription;-><init>(Lo/Factory2$3;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    :cond_0
    iget-object v0, p0, Lo/Factory2;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Factory2$TaskDescription;

    const/4 v0, 0x2

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    const-string v6, "right to "

    const-string v7, " undefined"

    const/4 v8, -0x1

    packed-switch p2, :pswitch_data_0

    .line 1205
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1206
    invoke-direct {p0, p2}, Lo/Factory2;->e(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Lo/Factory2;->e(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " unknown"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    if-ne p4, v1, :cond_1

    .line 1194
    iput p3, p1, Lo/Factory2$TaskDescription;->q:I

    .line 1195
    iput v8, p1, Lo/Factory2$TaskDescription;->s:I

    goto :goto_0

    :cond_1
    if-ne p4, v2, :cond_2

    .line 1197
    iput p3, p1, Lo/Factory2$TaskDescription;->s:I

    .line 1198
    iput v8, p1, Lo/Factory2$TaskDescription;->q:I

    .line 1202
    :goto_0
    iput p5, p1, Lo/Factory2$TaskDescription;->F:I

    goto/16 :goto_6

    .line 1200
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Lo/Factory2;->e(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    if-ne p4, v2, :cond_3

    .line 1182
    iput p3, p1, Lo/Factory2$TaskDescription;->r:I

    .line 1183
    iput v8, p1, Lo/Factory2$TaskDescription;->t:I

    goto :goto_1

    :cond_3
    if-ne p4, v1, :cond_4

    .line 1185
    iput p3, p1, Lo/Factory2$TaskDescription;->t:I

    .line 1186
    iput v8, p1, Lo/Factory2$TaskDescription;->r:I

    .line 1190
    :goto_1
    iput p5, p1, Lo/Factory2$TaskDescription;->I:I

    goto/16 :goto_6

    .line 1188
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Lo/Factory2;->e(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    const/4 p2, 0x5

    if-ne p4, p2, :cond_5

    .line 1171
    iput p3, p1, Lo/Factory2$TaskDescription;->p:I

    .line 1172
    iput v8, p1, Lo/Factory2$TaskDescription;->n:I

    .line 1173
    iput v8, p1, Lo/Factory2$TaskDescription;->k:I

    .line 1174
    iput v8, p1, Lo/Factory2$TaskDescription;->m:I

    .line 1175
    iput v8, p1, Lo/Factory2$TaskDescription;->o:I

    goto/16 :goto_6

    .line 1177
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Lo/Factory2;->e(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    if-ne p4, v3, :cond_6

    .line 1155
    iput p3, p1, Lo/Factory2$TaskDescription;->n:I

    .line 1156
    iput v8, p1, Lo/Factory2$TaskDescription;->k:I

    .line 1157
    iput v8, p1, Lo/Factory2$TaskDescription;->p:I

    goto :goto_2

    :cond_6
    if-ne p4, v4, :cond_7

    .line 1160
    iput p3, p1, Lo/Factory2$TaskDescription;->k:I

    .line 1161
    iput v8, p1, Lo/Factory2$TaskDescription;->n:I

    .line 1162
    iput v8, p1, Lo/Factory2$TaskDescription;->p:I

    .line 1167
    :goto_2
    iput p5, p1, Lo/Factory2$TaskDescription;->H:I

    goto/16 :goto_6

    .line 1165
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Lo/Factory2;->e(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    if-ne p4, v4, :cond_8

    .line 1140
    iput p3, p1, Lo/Factory2$TaskDescription;->m:I

    .line 1141
    iput v8, p1, Lo/Factory2$TaskDescription;->o:I

    .line 1142
    iput v8, p1, Lo/Factory2$TaskDescription;->p:I

    goto :goto_3

    :cond_8
    if-ne p4, v3, :cond_9

    .line 1144
    iput p3, p1, Lo/Factory2$TaskDescription;->o:I

    .line 1145
    iput v8, p1, Lo/Factory2$TaskDescription;->m:I

    .line 1146
    iput v8, p1, Lo/Factory2$TaskDescription;->p:I

    .line 1151
    :goto_3
    iput p5, p1, Lo/Factory2$TaskDescription;->E:I

    goto :goto_6

    .line 1149
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Lo/Factory2;->e(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_5
    if-ne p4, v5, :cond_a

    .line 1126
    iput p3, p1, Lo/Factory2$TaskDescription;->i:I

    .line 1127
    iput v8, p1, Lo/Factory2$TaskDescription;->l:I

    goto :goto_4

    :cond_a
    if-ne p4, v0, :cond_b

    .line 1130
    iput p3, p1, Lo/Factory2$TaskDescription;->l:I

    .line 1131
    iput v8, p1, Lo/Factory2$TaskDescription;->i:I

    .line 1136
    :goto_4
    iput p5, p1, Lo/Factory2$TaskDescription;->G:I

    goto :goto_6

    .line 1134
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Lo/Factory2;->e(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_6
    if-ne p4, v5, :cond_c

    .line 1113
    iput p3, p1, Lo/Factory2$TaskDescription;->g:I

    .line 1114
    iput v8, p1, Lo/Factory2$TaskDescription;->h:I

    goto :goto_5

    :cond_c
    if-ne p4, v0, :cond_d

    .line 1116
    iput p3, p1, Lo/Factory2$TaskDescription;->h:I

    .line 1117
    iput v8, p1, Lo/Factory2$TaskDescription;->g:I

    .line 1122
    :goto_5
    iput p5, p1, Lo/Factory2$TaskDescription;->C:I

    :goto_6
    return-void

    .line 1120
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Left to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Lo/Factory2;->e(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(IF)V
    .locals 0

    .line 1507
    invoke-direct {p0, p1}, Lo/Factory2;->c(I)Lo/Factory2$TaskDescription;

    move-result-object p1

    iput p2, p1, Lo/Factory2$TaskDescription;->u:F

    return-void
.end method

.method public c(II)V
    .locals 0

    .line 1714
    invoke-direct {p0, p1}, Lo/Factory2;->c(I)Lo/Factory2$TaskDescription;

    move-result-object p1

    iput p2, p1, Lo/Factory2$TaskDescription;->c:I

    return-void
.end method

.method public d(IF)V
    .locals 1

    .line 2101
    invoke-direct {p0, p1}, Lo/Factory2;->c(I)Lo/Factory2$TaskDescription;

    move-result-object v0

    iput p2, v0, Lo/Factory2$TaskDescription;->f:F

    .line 2102
    invoke-direct {p0, p1}, Lo/Factory2;->c(I)Lo/Factory2$TaskDescription;

    move-result-object p2

    const/4 v0, -0x1

    iput v0, p2, Lo/Factory2$TaskDescription;->j:I

    .line 2103
    invoke-direct {p0, p1}, Lo/Factory2;->c(I)Lo/Factory2$TaskDescription;

    move-result-object p1

    iput v0, p1, Lo/Factory2$TaskDescription;->e:I

    return-void
.end method

.method public d(II)V
    .locals 2

    .line 1371
    iget-object v0, p0, Lo/Factory2;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1372
    iget-object v0, p0, Lo/Factory2;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Factory2$TaskDescription;

    const/4 v0, -0x1

    packed-switch p2, :pswitch_data_0

    .line 1415
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unknown constraint"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1409
    :pswitch_0
    iput v0, p1, Lo/Factory2$TaskDescription;->s:I

    .line 1410
    iput v0, p1, Lo/Factory2$TaskDescription;->q:I

    .line 1411
    iput v0, p1, Lo/Factory2$TaskDescription;->F:I

    .line 1412
    iput v0, p1, Lo/Factory2$TaskDescription;->R:I

    goto :goto_0

    .line 1403
    :pswitch_1
    iput v0, p1, Lo/Factory2$TaskDescription;->t:I

    .line 1404
    iput v0, p1, Lo/Factory2$TaskDescription;->r:I

    .line 1405
    iput v0, p1, Lo/Factory2$TaskDescription;->I:I

    .line 1406
    iput v0, p1, Lo/Factory2$TaskDescription;->S:I

    goto :goto_0

    .line 1400
    :pswitch_2
    iput v0, p1, Lo/Factory2$TaskDescription;->p:I

    goto :goto_0

    .line 1393
    :pswitch_3
    iput v0, p1, Lo/Factory2$TaskDescription;->k:I

    .line 1394
    iput v0, p1, Lo/Factory2$TaskDescription;->n:I

    .line 1395
    iput v0, p1, Lo/Factory2$TaskDescription;->H:I

    .line 1396
    iput v0, p1, Lo/Factory2$TaskDescription;->M:I

    goto :goto_0

    .line 1387
    :pswitch_4
    iput v0, p1, Lo/Factory2$TaskDescription;->o:I

    .line 1388
    iput v0, p1, Lo/Factory2$TaskDescription;->m:I

    .line 1389
    iput v0, p1, Lo/Factory2$TaskDescription;->E:I

    .line 1390
    iput v0, p1, Lo/Factory2$TaskDescription;->N:I

    goto :goto_0

    .line 1381
    :pswitch_5
    iput v0, p1, Lo/Factory2$TaskDescription;->l:I

    .line 1382
    iput v0, p1, Lo/Factory2$TaskDescription;->i:I

    .line 1383
    iput v0, p1, Lo/Factory2$TaskDescription;->G:I

    .line 1384
    iput v0, p1, Lo/Factory2$TaskDescription;->J:I

    goto :goto_0

    .line 1375
    :pswitch_6
    iput v0, p1, Lo/Factory2$TaskDescription;->h:I

    .line 1376
    iput v0, p1, Lo/Factory2$TaskDescription;->g:I

    .line 1377
    iput v0, p1, Lo/Factory2$TaskDescription;->C:I

    .line 1378
    iput v0, p1, Lo/Factory2$TaskDescription;->L:I

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d(ILjava/lang/String;)V
    .locals 0

    .line 1518
    invoke-direct {p0, p1}, Lo/Factory2;->c(I)Lo/Factory2$TaskDescription;

    move-result-object p1

    iput-object p2, p1, Lo/Factory2$TaskDescription;->w:Ljava/lang/String;

    return-void
.end method

.method public d(Landroid/content/Context;I)V
    .locals 4

    .line 2145
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2146
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    .line 2151
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    .line 2159
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2160
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lo/Factory2;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Lo/Factory2$TaskDescription;

    move-result-object v2

    const-string v3, "Guideline"

    .line 2161
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2162
    iput-boolean v1, v2, Lo/Factory2$TaskDescription;->b:Z

    .line 2164
    :cond_1
    iget-object v0, p0, Lo/Factory2;->a:Ljava/util/HashMap;

    iget v1, v2, Lo/Factory2$TaskDescription;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2156
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 2153
    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2176
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 2174
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public d(Lo/MenuInflater;)V
    .locals 11

    .line 705
    invoke-virtual {p1}, Lo/MenuInflater;->getChildCount()I

    move-result v0

    .line 706
    iget-object v1, p0, Lo/Factory2;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    .line 708
    invoke-virtual {p1, v1}, Lo/MenuInflater;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 709
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lo/MenuInflater$StateListAnimator;

    .line 711
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 715
    iget-object v5, p0, Lo/Factory2;->a:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 716
    iget-object v5, p0, Lo/Factory2;->a:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lo/Factory2$TaskDescription;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lo/Factory2$TaskDescription;-><init>(Lo/Factory2$3;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    :cond_0
    iget-object v5, p0, Lo/Factory2;->a:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/Factory2$TaskDescription;

    .line 719
    invoke-static {v5, v4, v3}, Lo/Factory2$TaskDescription;->e(Lo/Factory2$TaskDescription;ILo/MenuInflater$StateListAnimator;)V

    .line 720
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    iput v3, v5, Lo/Factory2$TaskDescription;->K:I

    .line 721
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_3

    .line 722
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v3

    iput v3, v5, Lo/Factory2$TaskDescription;->V:F

    .line 723
    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v3

    iput v3, v5, Lo/Factory2$TaskDescription;->W:F

    .line 724
    invoke-virtual {v2}, Landroid/view/View;->getRotationX()F

    move-result v3

    iput v3, v5, Lo/Factory2$TaskDescription;->ac:F

    .line 725
    invoke-virtual {v2}, Landroid/view/View;->getRotationY()F

    move-result v3

    iput v3, v5, Lo/Factory2$TaskDescription;->Y:F

    .line 726
    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v3

    iput v3, v5, Lo/Factory2$TaskDescription;->ab:F

    .line 727
    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v3

    iput v3, v5, Lo/Factory2$TaskDescription;->Z:F

    .line 729
    invoke-virtual {v2}, Landroid/view/View;->getPivotX()F

    move-result v3

    .line 730
    invoke-virtual {v2}, Landroid/view/View;->getPivotY()F

    move-result v4

    float-to-double v6, v3

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-nez v10, :cond_1

    float-to-double v6, v4

    cmpl-double v10, v6, v8

    if-eqz v10, :cond_2

    .line 733
    :cond_1
    iput v3, v5, Lo/Factory2$TaskDescription;->aa:F

    .line 734
    iput v4, v5, Lo/Factory2$TaskDescription;->ad:F

    .line 737
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v3

    iput v3, v5, Lo/Factory2$TaskDescription;->ah:F

    .line 738
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v3

    iput v3, v5, Lo/Factory2$TaskDescription;->af:F

    .line 739
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_3

    .line 740
    invoke-virtual {v2}, Landroid/view/View;->getTranslationZ()F

    move-result v3

    iput v3, v5, Lo/Factory2$TaskDescription;->ag:F

    .line 741
    iget-boolean v3, v5, Lo/Factory2$TaskDescription;->X:Z

    if-eqz v3, :cond_3

    .line 742
    invoke-virtual {v2}, Landroid/view/View;->getElevation()F

    move-result v3

    iput v3, v5, Lo/Factory2$TaskDescription;->T:F

    .line 746
    :cond_3
    instance-of v3, v2, Lo/LayoutInflater;

    if-eqz v3, :cond_4

    .line 747
    check-cast v2, Lo/LayoutInflater;

    .line 748
    invoke-virtual {v2}, Lo/LayoutInflater;->c()Z

    move-result v3

    iput-boolean v3, v5, Lo/Factory2$TaskDescription;->aq:Z

    .line 749
    invoke-virtual {v2}, Lo/LayoutInflater;->e()[I

    move-result-object v3

    iput-object v3, v5, Lo/Factory2$TaskDescription;->av:[I

    .line 750
    invoke-virtual {v2}, Lo/LayoutInflater;->b()I

    move-result v2

    iput v2, v5, Lo/Factory2$TaskDescription;->at:I

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 713
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return-void
.end method

.method public e(IF)V
    .locals 0

    .line 1856
    invoke-direct {p0, p1}, Lo/Factory2;->c(I)Lo/Factory2$TaskDescription;

    move-result-object p1

    iput p2, p1, Lo/Factory2$TaskDescription;->O:F

    return-void
.end method

.method public e(II)V
    .locals 0

    .line 1528
    invoke-direct {p0, p1}, Lo/Factory2;->c(I)Lo/Factory2$TaskDescription;

    move-result-object p1

    iput p2, p1, Lo/Factory2$TaskDescription;->K:I

    return-void
.end method

.method public e(IIII)V
    .locals 9

    .line 1219
    iget-object v0, p0, Lo/Factory2;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1220
    iget-object v0, p0, Lo/Factory2;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lo/Factory2$TaskDescription;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lo/Factory2$TaskDescription;-><init>(Lo/Factory2$3;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    :cond_0
    iget-object v0, p0, Lo/Factory2;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Factory2$TaskDescription;

    const/4 v0, 0x2

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    const-string v6, "right to "

    const-string v7, " undefined"

    const/4 v8, -0x1

    packed-switch p2, :pswitch_data_0

    .line 1307
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1308
    invoke-direct {p0, p2}, Lo/Factory2;->e(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Lo/Factory2;->e(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " unknown"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    if-ne p4, v1, :cond_1

    .line 1297
    iput p3, p1, Lo/Factory2$TaskDescription;->q:I

    .line 1298
    iput v8, p1, Lo/Factory2$TaskDescription;->s:I

    goto/16 :goto_0

    :cond_1
    if-ne p4, v2, :cond_2

    .line 1300
    iput p3, p1, Lo/Factory2$TaskDescription;->s:I

    .line 1301
    iput v8, p1, Lo/Factory2$TaskDescription;->q:I

    goto/16 :goto_0

    .line 1303
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Lo/Factory2;->e(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    if-ne p4, v2, :cond_3

    .line 1286
    iput p3, p1, Lo/Factory2$TaskDescription;->r:I

    .line 1287
    iput v8, p1, Lo/Factory2$TaskDescription;->t:I

    goto/16 :goto_0

    :cond_3
    if-ne p4, v1, :cond_4

    .line 1289
    iput p3, p1, Lo/Factory2$TaskDescription;->t:I

    .line 1290
    iput v8, p1, Lo/Factory2$TaskDescription;->r:I

    goto/16 :goto_0

    .line 1292
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Lo/Factory2;->e(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    const/4 p2, 0x5

    if-ne p4, p2, :cond_5

    .line 1275
    iput p3, p1, Lo/Factory2$TaskDescription;->p:I

    .line 1276
    iput v8, p1, Lo/Factory2$TaskDescription;->n:I

    .line 1277
    iput v8, p1, Lo/Factory2$TaskDescription;->k:I

    .line 1278
    iput v8, p1, Lo/Factory2$TaskDescription;->m:I

    .line 1279
    iput v8, p1, Lo/Factory2$TaskDescription;->o:I

    goto/16 :goto_0

    .line 1281
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Lo/Factory2;->e(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    if-ne p4, v3, :cond_6

    .line 1262
    iput p3, p1, Lo/Factory2$TaskDescription;->n:I

    .line 1263
    iput v8, p1, Lo/Factory2$TaskDescription;->k:I

    .line 1264
    iput v8, p1, Lo/Factory2$TaskDescription;->p:I

    goto/16 :goto_0

    :cond_6
    if-ne p4, v4, :cond_7

    .line 1266
    iput p3, p1, Lo/Factory2$TaskDescription;->k:I

    .line 1267
    iput v8, p1, Lo/Factory2$TaskDescription;->n:I

    .line 1268
    iput v8, p1, Lo/Factory2$TaskDescription;->p:I

    goto/16 :goto_0

    .line 1270
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Lo/Factory2;->e(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    if-ne p4, v4, :cond_8

    .line 1249
    iput p3, p1, Lo/Factory2$TaskDescription;->m:I

    .line 1250
    iput v8, p1, Lo/Factory2$TaskDescription;->o:I

    .line 1251
    iput v8, p1, Lo/Factory2$TaskDescription;->p:I

    goto :goto_0

    :cond_8
    if-ne p4, v3, :cond_9

    .line 1253
    iput p3, p1, Lo/Factory2$TaskDescription;->o:I

    .line 1254
    iput v8, p1, Lo/Factory2$TaskDescription;->m:I

    .line 1255
    iput v8, p1, Lo/Factory2$TaskDescription;->p:I

    goto :goto_0

    .line 1257
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Lo/Factory2;->e(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_5
    if-ne p4, v5, :cond_a

    .line 1237
    iput p3, p1, Lo/Factory2$TaskDescription;->i:I

    .line 1238
    iput v8, p1, Lo/Factory2$TaskDescription;->l:I

    goto :goto_0

    :cond_a
    if-ne p4, v0, :cond_b

    .line 1241
    iput p3, p1, Lo/Factory2$TaskDescription;->l:I

    .line 1242
    iput v8, p1, Lo/Factory2$TaskDescription;->i:I

    goto :goto_0

    .line 1244
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Lo/Factory2;->e(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_6
    if-ne p4, v5, :cond_c

    .line 1226
    iput p3, p1, Lo/Factory2$TaskDescription;->g:I

    .line 1227
    iput v8, p1, Lo/Factory2$TaskDescription;->h:I

    goto :goto_0

    :cond_c
    if-ne p4, v0, :cond_d

    .line 1229
    iput p3, p1, Lo/Factory2$TaskDescription;->h:I

    .line 1230
    iput v8, p1, Lo/Factory2$TaskDescription;->g:I

    :goto_0
    return-void

    .line 1232
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "left to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Lo/Factory2;->e(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method e(Lo/MenuInflater;)V
    .locals 9

    .line 797
    invoke-virtual {p1}, Lo/MenuInflater;->getChildCount()I

    move-result v0

    .line 798
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lo/Factory2;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ge v2, v0, :cond_8

    .line 801
    invoke-virtual {p1, v2}, Lo/MenuInflater;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 802
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v6, v3, :cond_7

    .line 806
    iget-object v7, p0, Lo/Factory2;->a:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 807
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 808
    iget-object v7, p0, Lo/Factory2;->a:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/Factory2$TaskDescription;

    .line 809
    instance-of v8, v5, Lo/LayoutInflater;

    if-eqz v8, :cond_0

    .line 810
    iput v4, v7, Lo/Factory2$TaskDescription;->aw:I

    .line 812
    :cond_0
    iget v8, v7, Lo/Factory2$TaskDescription;->aw:I

    if-eq v8, v3, :cond_3

    .line 813
    iget v3, v7, Lo/Factory2$TaskDescription;->aw:I

    if-eq v3, v4, :cond_1

    goto :goto_1

    .line 815
    :cond_1
    move-object v3, v5

    check-cast v3, Lo/LayoutInflater;

    .line 816
    invoke-virtual {v3, v6}, Lo/LayoutInflater;->setId(I)V

    .line 817
    iget v4, v7, Lo/Factory2$TaskDescription;->at:I

    invoke-virtual {v3, v4}, Lo/LayoutInflater;->setType(I)V

    .line 818
    iget-boolean v4, v7, Lo/Factory2$TaskDescription;->aq:Z

    invoke-virtual {v3, v4}, Lo/LayoutInflater;->setAllowsGoneWidget(Z)V

    .line 819
    iget-object v4, v7, Lo/Factory2$TaskDescription;->av:[I

    if-eqz v4, :cond_2

    .line 820
    iget-object v4, v7, Lo/Factory2$TaskDescription;->av:[I

    invoke-virtual {v3, v4}, Lo/LayoutInflater;->setReferencedIds([I)V

    goto :goto_1

    .line 821
    :cond_2
    iget-object v4, v7, Lo/Factory2$TaskDescription;->as:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 822
    iget-object v4, v7, Lo/Factory2$TaskDescription;->as:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lo/Factory2;->c(Landroid/view/View;Ljava/lang/String;)[I

    move-result-object v4

    iput-object v4, v7, Lo/Factory2$TaskDescription;->av:[I

    .line 824
    iget-object v4, v7, Lo/Factory2$TaskDescription;->av:[I

    invoke-virtual {v3, v4}, Lo/LayoutInflater;->setReferencedIds([I)V

    .line 830
    :cond_3
    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lo/MenuInflater$StateListAnimator;

    .line 831
    invoke-virtual {v7, v3}, Lo/Factory2$TaskDescription;->b(Lo/MenuInflater$StateListAnimator;)V

    .line 832
    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 833
    iget v3, v7, Lo/Factory2$TaskDescription;->K:I

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 834
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_6

    .line 835
    iget v3, v7, Lo/Factory2$TaskDescription;->V:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setAlpha(F)V

    .line 836
    iget v3, v7, Lo/Factory2$TaskDescription;->W:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setRotation(F)V

    .line 837
    iget v3, v7, Lo/Factory2$TaskDescription;->ac:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setRotationX(F)V

    .line 838
    iget v3, v7, Lo/Factory2$TaskDescription;->Y:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setRotationY(F)V

    .line 839
    iget v3, v7, Lo/Factory2$TaskDescription;->ab:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleX(F)V

    .line 840
    iget v3, v7, Lo/Factory2$TaskDescription;->Z:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleY(F)V

    .line 841
    iget v3, v7, Lo/Factory2$TaskDescription;->aa:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_4

    .line 842
    iget v3, v7, Lo/Factory2$TaskDescription;->aa:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setPivotX(F)V

    .line 844
    :cond_4
    iget v3, v7, Lo/Factory2$TaskDescription;->ad:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_5

    .line 845
    iget v3, v7, Lo/Factory2$TaskDescription;->ad:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setPivotY(F)V

    .line 847
    :cond_5
    iget v3, v7, Lo/Factory2$TaskDescription;->ah:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 848
    iget v3, v7, Lo/Factory2$TaskDescription;->af:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 849
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_6

    .line 850
    iget v3, v7, Lo/Factory2$TaskDescription;->ag:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationZ(F)V

    .line 851
    iget-boolean v3, v7, Lo/Factory2$TaskDescription;->X:Z

    if-eqz v3, :cond_6

    .line 852
    iget v3, v7, Lo/Factory2$TaskDescription;->T:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setElevation(F)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 804
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 858
    :cond_8
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 859
    iget-object v2, p0, Lo/Factory2;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Factory2$TaskDescription;

    .line 860
    iget v5, v2, Lo/Factory2$TaskDescription;->aw:I

    if-eq v5, v3, :cond_d

    .line 861
    iget v5, v2, Lo/Factory2$TaskDescription;->aw:I

    if-eq v5, v4, :cond_a

    goto :goto_4

    .line 863
    :cond_a
    new-instance v5, Lo/LayoutInflater;

    invoke-virtual {p1}, Lo/MenuInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lo/LayoutInflater;-><init>(Landroid/content/Context;)V

    .line 864
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lo/LayoutInflater;->setId(I)V

    .line 865
    iget-object v6, v2, Lo/Factory2$TaskDescription;->av:[I

    if-eqz v6, :cond_b

    .line 866
    iget-object v6, v2, Lo/Factory2$TaskDescription;->av:[I

    invoke-virtual {v5, v6}, Lo/LayoutInflater;->setReferencedIds([I)V

    goto :goto_3

    .line 867
    :cond_b
    iget-object v6, v2, Lo/Factory2$TaskDescription;->as:Ljava/lang/String;

    if-eqz v6, :cond_c

    .line 868
    iget-object v6, v2, Lo/Factory2$TaskDescription;->as:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lo/Factory2;->c(Landroid/view/View;Ljava/lang/String;)[I

    move-result-object v6

    iput-object v6, v2, Lo/Factory2$TaskDescription;->av:[I

    .line 870
    iget-object v6, v2, Lo/Factory2$TaskDescription;->av:[I

    invoke-virtual {v5, v6}, Lo/LayoutInflater;->setReferencedIds([I)V

    .line 872
    :cond_c
    :goto_3
    iget v6, v2, Lo/Factory2$TaskDescription;->at:I

    invoke-virtual {v5, v6}, Lo/LayoutInflater;->setType(I)V

    .line 874
    invoke-virtual {p1}, Lo/MenuInflater;->generateDefaultLayoutParams()Lo/MenuInflater$StateListAnimator;

    move-result-object v6

    .line 875
    invoke-virtual {v5}, Lo/LayoutInflater;->a()V

    .line 876
    invoke-virtual {v2, v6}, Lo/Factory2$TaskDescription;->b(Lo/MenuInflater$StateListAnimator;)V

    .line 877
    invoke-virtual {p1, v5, v6}, Lo/MenuInflater;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 881
    :cond_d
    :goto_4
    iget-boolean v5, v2, Lo/Factory2$TaskDescription;->b:Z

    if-eqz v5, :cond_9

    .line 882
    new-instance v5, Lo/MotionEvent;

    invoke-virtual {p1}, Lo/MenuInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lo/MotionEvent;-><init>(Landroid/content/Context;)V

    .line 883
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v1}, Lo/MotionEvent;->setId(I)V

    .line 884
    invoke-virtual {p1}, Lo/MenuInflater;->generateDefaultLayoutParams()Lo/MenuInflater$StateListAnimator;

    move-result-object v1

    .line 885
    invoke-virtual {v2, v1}, Lo/Factory2$TaskDescription;->b(Lo/MenuInflater$StateListAnimator;)V

    .line 886
    invoke-virtual {p1, v5, v1}, Lo/MenuInflater;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_e
    return-void
.end method

.method public f(II)V
    .locals 1

    .line 2076
    invoke-direct {p0, p1}, Lo/Factory2;->c(I)Lo/Factory2$TaskDescription;

    move-result-object v0

    iput p2, v0, Lo/Factory2$TaskDescription;->e:I

    .line 2077
    invoke-direct {p0, p1}, Lo/Factory2;->c(I)Lo/Factory2$TaskDescription;

    move-result-object p2

    const/4 v0, -0x1

    iput v0, p2, Lo/Factory2$TaskDescription;->j:I

    .line 2078
    invoke-direct {p0, p1}, Lo/Factory2;->c(I)Lo/Factory2$TaskDescription;

    move-result-object p1

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p1, Lo/Factory2$TaskDescription;->f:F

    return-void
.end method

.method public g(II)V
    .locals 0

    .line 1882
    invoke-direct {p0, p1}, Lo/Factory2;->c(I)Lo/Factory2$TaskDescription;

    move-result-object p1

    iput p2, p1, Lo/Factory2$TaskDescription;->P:I

    return-void
.end method

.method public i(II)V
    .locals 0

    .line 1898
    invoke-direct {p0, p1}, Lo/Factory2;->c(I)Lo/Factory2$TaskDescription;

    move-result-object p1

    iput p2, p1, Lo/Factory2$TaskDescription;->U:I

    return-void
.end method
