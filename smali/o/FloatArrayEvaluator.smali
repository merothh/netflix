.class public Lo/FloatArrayEvaluator;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final b:Ljava/lang/Object;

.field private static g:I = 0x1

.field private static h:I


# instance fields
.field private a:Lo/NoSuchPaddingException;

.field private final c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/ShortBufferException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/FloatArrayEvaluator;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lo/NoSuchPaddingException;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable$Callback;",
            "Ljava/lang/String;",
            "Lo/NoSuchPaddingException;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/ShortBufferException;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lo/FloatArrayEvaluator;->d:Ljava/lang/String;

    .line 33
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lo/FloatArrayEvaluator;->d:Ljava/lang/String;

    .line 34
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v0, 0x2f

    if-eq p2, v0, :cond_0

    .line 35
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/FloatArrayEvaluator;->d:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/FloatArrayEvaluator;->d:Ljava/lang/String;

    .line 38
    :cond_0
    instance-of p2, p1, Landroid/view/View;

    if-nez p2, :cond_1

    const-string p1, "LottieDrawable must be inside of a view for images to work."

    .line 39
    invoke-static {p1}, Lo/ActivityOptions;->d(Ljava/lang/String;)V

    .line 40
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/FloatArrayEvaluator;->e:Ljava/util/Map;

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lo/FloatArrayEvaluator;->c:Landroid/content/Context;

    return-void

    .line 45
    :cond_1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/FloatArrayEvaluator;->c:Landroid/content/Context;

    .line 46
    iput-object p4, p0, Lo/FloatArrayEvaluator;->e:Ljava/util/Map;

    .line 47
    invoke-virtual {p0, p3}, Lo/FloatArrayEvaluator;->e(Lo/NoSuchPaddingException;)V

    return-void
.end method

.method private b(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .line 126
    sget-object v0, Lo/FloatArrayEvaluator;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lo/FloatArrayEvaluator;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ShortBufferException;

    invoke-virtual {p1, p2}, Lo/ShortBufferException;->c(Landroid/graphics/Bitmap;)V

    .line 128
    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p1

    .line 129
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public b(Landroid/content/Context;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 122
    iget-object v0, p0, Lo/FloatArrayEvaluator;->c:Landroid/content/Context;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lo/FloatArrayEvaluator;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 13

    const-string v0, "indexOf"

    .line 70
    iget-object v1, p0, Lo/FloatArrayEvaluator;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ShortBufferException;

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v1, :cond_0

    .line 111
    sget p1, Lo/FloatArrayEvaluator;->g:I

    add-int/lit8 p1, p1, 0x41

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lo/FloatArrayEvaluator;->h:I

    rem-int/2addr p1, v3

    return-object v2

    .line 74
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lo/ShortBufferException;->c()Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/16 v5, 0x42

    if-eqz v4, :cond_1

    const/4 v6, 0x7

    goto :goto_0

    :cond_1
    const/16 v6, 0x42

    :goto_0
    if-eq v6, v5, :cond_2

    .line 81
    sget p1, Lo/FloatArrayEvaluator;->g:I

    add-int/lit8 p1, p1, 0x9

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lo/FloatArrayEvaluator;->h:I

    rem-int/2addr p1, v3

    return-object v4

    .line 79
    :cond_2
    iget-object v4, p0, Lo/FloatArrayEvaluator;->a:Lo/NoSuchPaddingException;

    if-eqz v4, :cond_4

    .line 80
    invoke-interface {v4, v1}, Lo/NoSuchPaddingException;->b(Lo/ShortBufferException;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 82
    invoke-direct {p0, p1, v0}, Lo/FloatArrayEvaluator;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_3
    return-object v0

    .line 87
    :cond_4
    invoke-virtual {v1}, Lo/ShortBufferException;->d()Ljava/lang/String;

    move-result-object v4

    .line 88
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v6, 0x1

    .line 89
    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/16 v7, 0xa0

    .line 90
    iput v7, v5, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    const-string v7, "data:"

    .line 72
    sget v8, Lo/FloatArrayEvaluator;->h:I

    add-int/lit8 v8, v8, 0xd

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lo/FloatArrayEvaluator;->g:I

    rem-int/2addr v8, v3

    :try_start_1
    new-array v8, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    .line 84
    const-class v7, Ljava/lang/String;

    const-string v10, "startsWith"

    new-array v11, v6, [Ljava/lang/Class;

    const-class v12, Ljava/lang/String;

    aput-object v12, v11, v9

    invoke-virtual {v7, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/16 v8, 0x3e

    if-eqz v7, :cond_5

    const/16 v7, 0x10

    goto :goto_1

    :cond_5
    const/16 v7, 0x3e

    :goto_1
    if-eq v7, v8, :cond_c

    const-string v7, "base64,"

    :try_start_2
    new-array v8, v6, [Ljava/lang/Object;

    aput-object v7, v8, v9

    .line 72
    const-class v7, Ljava/lang/String;

    new-array v10, v6, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v9

    invoke-virtual {v7, v0, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v8, 0x48

    if-lez v7, :cond_6

    const/16 v7, 0x48

    goto :goto_2

    :cond_6
    const/16 v7, 0x28

    :goto_2
    if-eq v7, v8, :cond_7

    goto/16 :goto_4

    .line 99
    :cond_7
    :try_start_3
    sget v1, Lo/FloatArrayEvaluator;->g:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v7, v1, 0x80

    :try_start_4
    sput v7, Lo/FloatArrayEvaluator;->h:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    rem-int/2addr v1, v3

    const/16 v1, 0x2c

    :try_start_5
    new-array v7, v6, [Ljava/lang/Object;

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v9

    const-class v1, Ljava/lang/String;

    new-array v8, v6, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v1, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    add-int/2addr v0, v6

    .line 108
    sget v1, Lo/FloatArrayEvaluator;->h:I

    add-int/lit8 v1, v1, 0x63

    rem-int/lit16 v7, v1, 0x80

    sput v7, Lo/FloatArrayEvaluator;->g:I

    rem-int/2addr v1, v3

    const-string v3, "substring"

    if-nez v1, :cond_8

    :try_start_6
    new-array v1, v6, [Ljava/lang/Object;

    .line 118
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v9

    const-class v0, Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v9

    invoke-virtual {v0, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {v0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_3

    :cond_8
    :try_start_8
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v9

    const-class v0, Ljava/lang/String;

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v9

    invoke-virtual {v0, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-static {v0, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_0

    .line 101
    :goto_3
    array-length v1, v0

    :try_start_a
    invoke-static {v0, v9, v1, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 102
    invoke-direct {p0, p1, v0}, Lo/FloatArrayEvaluator;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 76
    :try_start_b
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 79
    throw v0

    .line 118
    :cond_9
    throw p1

    :catchall_1
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 81
    throw v0

    .line 99
    :cond_a
    throw p1
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "data URL did not have correct base64 format."

    .line 98
    invoke-static {v0, p1}, Lo/ActivityOptions;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :catch_1
    move-exception p1

    .line 118
    throw p1

    :catchall_2
    move-exception p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 71
    throw v0

    .line 118
    :cond_b
    throw p1

    .line 107
    :cond_c
    :goto_4
    :try_start_c
    iget-object v0, p0, Lo/FloatArrayEvaluator;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 111
    iget-object v0, p0, Lo/FloatArrayEvaluator;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lo/FloatArrayEvaluator;->d:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    :try_start_d
    new-array v7, v3, [Ljava/lang/Object;

    aput-object v4, v7, v6

    aput-object v0, v7, v9

    const/16 v0, 0x7db6

    const/16 v4, 0x11

    invoke-static {v0, v4, v9}, Lo/NetworkInfo;->e(CII)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-string v4, "d"

    new-array v3, v3, [Ljava/lang/Class;

    const-class v8, Landroid/content/res/AssetManager;

    aput-object v8, v3, v9

    const-class v8, Ljava/lang/String;

    aput-object v8, v3, v6

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 116
    invoke-static {v0, v2, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 117
    invoke-virtual {v1}, Lo/ShortBufferException;->e()I

    move-result v2

    invoke-virtual {v1}, Lo/ShortBufferException;->b()I

    move-result v1

    invoke-static {v0, v2, v1}, Lo/ActivityManagerNative;->c(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 118
    invoke-direct {p0, p1, v0}, Lo/FloatArrayEvaluator;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :catchall_3
    move-exception p1

    .line 111
    :try_start_e
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_d

    throw v0

    :cond_d
    throw p1

    .line 108
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    :catch_2
    move-exception p1

    const-string v0, "Unable to open asset."

    .line 113
    invoke-static {v0, p1}, Lo/ActivityOptions;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :catchall_4
    move-exception p1

    .line 118
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 99
    throw v0

    :cond_f
    throw p1

    :catch_3
    move-exception p1

    .line 108
    throw p1
.end method

.method public e(Lo/NoSuchPaddingException;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lo/FloatArrayEvaluator;->a:Lo/NoSuchPaddingException;

    return-void
.end method
