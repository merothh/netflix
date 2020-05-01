.class public final Lcom/netflix/mediaclient/util/AndroidUtils;
.super Ljava/lang/Object;
.source "AndroidUtils.java"


# static fields
.field public static final FILENAME:Ljava/lang/String; = "FILENAME"

.field private static final MSL_APPBOOT_NFANDROID1:Ljava/lang/String; = "MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA1h/UVRYyyDMlfY4eEiGTAYH8enFcyOaAyW3ulv1X/lCZL8pdk4KywDxssdhvkj8ib7vrrK8ktf/aeTxzezR6HVcS9JZ9kIfTgGrTVnUHFjcYOBdPAaeJl7Mx8+ubAlYeMwsOaG/nHD96/7RkqxF0+FB4RKZTnfjTziZaIEkmLLb+ifyB5mvk8SVa7i8qJf2Dw2l/0uxp93558Dl9xeAOH3Hz3G7wgtxnL71BSOE8H9s7z4etQmuSdf++n++C9HeszauVohHhgtejw+qqf63a8R9/6MeJwh/VRJTw7nXM2PN+8ERpQzJR+AWOkHqbC2mgvSYEFMtBhodOxnp73bR7LMIAbObrTm7VDQBcav5wWlH+KPCaBR0VCRSy9GG23CHOsuWVln2idnDz/zFBHnVnWKVAanZ3Ot4LmM2nrJvSlrt1OiQSLaI+CJHO8InfVTQEXpduoiGkLpc1HcmWNF98JuA8ZX3tqmcncdHnEMG3A5hZVnM6MrsidcQTsojl/MuoXrMeuWkvQQUe4wklBHleLs6jA/Au0oT4Q34luCvG3C32N2XiUcAeFdGd3MuDlDjqG88A9CLd21eh1HqkHD76qeWGnwumLHyJmqL25Lmz4LMjJ/nkXaY9r4Fya2/I/aV9kt5lCaPY3Wb4nDivjPqM6iP9vHCKOMxwjvbE4DFgN60CAwEAAQ=="

.field private static final MSL_APPBOOT_NFANDROIDD:Ljava/lang/String; = "MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAniUdnoFyqHUerpq3zqrStDVAdmDXg90ARWUjelG8L/JYmLC/z1AxlFoqcbwvcrLonaguZVW1WH8cZzl2EQGDMeydZyDq2zTNh+2mVvrPxiqoVx9rVOtQScJzxVYvbkcgxHEwQJMz1DsM+42bjuOsruNshvTCm+eq6he8SwvCGV4ny0pe/jwY+JZcO+CxTw7/zEHrn9nQo/8doOU8DaMrC20KaW0ss/R3dj5ofonouyRInr1nwpFPZzZvFf9lMJnxS0com8RDnTQpe2GsKt7HMl6p9eQiPCNXy8ACTD9kEwbM5WZoUj5T3eTY4VgCL7HTXZ09wta7M9utfHt3rvMctxCSrzR02SaSPA5LxnW0rzM9KYabZs+77wvXo1I0Cf6+pjWqsJjwhIYEQMlHw8q4l/I/CPdLNlqPH2KplapDGvZSTF1znTiQRowK3U65GJBb+Qdr1GBbVf+pYWRldujhW1+iU+wp8B4BFInLwLUgc/iFi/gN9xSWMDJiw79C02L59542l4CvsTJdAoNOZvdvEUxrpWS+ewP1y73fJvqX5Po5Hqm+h97Rg3ABVQ48lh5N8hSFB4gUX343QzxP/wT6keoCfDAzn99tutavJRExaboF32CJjA4yopgurkYUO5YgQigGiiV38Nrv2x8Aa0QX6+XhRmKksV6z90t/4mu9OQkCAwEAAQ=="

.field public static final OUTRES:Ljava/lang/String; = "OUTRES"

.field private static final TAG:Ljava/lang/String; = "nf_utils"

.field public static final debug:Z = false

.field public static final enableTestServer:Z = false

.field public static final isReleaseForConfigServer:Z = true


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    return-void
.end method

.method public static canDisplayTransparentWebpImages()Z
    .locals 2

    .prologue
    .line 677
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static clearApplicationData(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 553
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 554
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 555
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 557
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 558
    const-string/jumbo v5, "lib"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 559
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/netflix/mediaclient/util/AndroidUtils;->deleteDir(Ljava/io/File;)Z

    .line 560
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 561
    const-string/jumbo v5, "TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "File /data/data/com.netflix.mediaclient/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " DELETED"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 566
    :cond_1
    return-void
.end method

.method public static createScaledBitmapWithAspectRatio(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 119
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 120
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 121
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 122
    if-lez v2, :cond_0

    if-gtz v3, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-object p0

    .line 125
    :cond_1
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 133
    if-le v2, v3, :cond_2

    .line 135
    mul-int v0, p2, v3

    div-int/2addr v0, v2

    move v1, p1

    .line 140
    :goto_1
    const-string/jumbo v4, "nf_utils"

    const-string/jumbo v5, "originalW=%d originalH=%d dstWidth=%d dstHeight=%d newWidth=%d newHeight=%d"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v4, v5, v6}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 141
    invoke-static {p0, v1, v0, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 138
    :cond_2
    mul-int v0, v2, p2

    div-int/2addr v0, v3

    move v1, v0

    move v0, p2

    goto :goto_1
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 569
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 570
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 571
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 572
    new-instance v3, Ljava/io/File;

    aget-object v4, v2, v0

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/netflix/mediaclient/util/AndroidUtils;->deleteDir(Ljava/io/File;)Z

    move-result v3

    .line 573
    if-nez v3, :cond_0

    .line 579
    :goto_1
    return v1

    .line 571
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 579
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    goto :goto_1
.end method

.method public static dipToPixels(Landroid/content/Context;I)I
    .locals 2

    .prologue
    .line 359
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 361
    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static dumpHprofToDisk()V
    .locals 4

    .prologue
    .line 584
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 585
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 586
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "netflix.prof"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 587
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 589
    :try_start_0
    const-string/jumbo v1, "nf_utils"

    const-string/jumbo v2, "************************************************************"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const-string/jumbo v1, "nf_utils"

    const-string/jumbo v2, "Dumping HPROF profile to file..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const-string/jumbo v1, "nf_utils"

    const-string/jumbo v2, "************************************************************"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-static {v0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 593
    const-string/jumbo v1, "nf_utils"

    const-string/jumbo v2, "************************************************************"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const-string/jumbo v1, "nf_utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Dump complete.  File: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const-string/jumbo v0, "nf_utils"

    const-string/jumbo v1, "************************************************************"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    :goto_0
    return-void

    .line 597
    :catch_0
    move-exception v0

    .line 598
    const-string/jumbo v1, "nf_utils"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static enableStrictMode()V
    .locals 1

    .prologue
    .line 540
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 541
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 543
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 544
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 540
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 546
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 547
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 548
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 549
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    .line 546
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 550
    return-void
.end method

.method public static forceStop(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 633
    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->unmuteAudio(Landroid/content/Context;)V

    .line 634
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 635
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 636
    const-string/jumbo v1, "nf_utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Destroying app proces "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_0
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 639
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 640
    const-string/jumbo v1, "nf_utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Destroying app proces "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " done."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_1
    return-void
.end method

.method public static getAndroidVersion()I
    .locals 1

    .prologue
    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getAppSignatures(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 310
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 311
    if-nez v2, :cond_1

    .line 312
    const-string/jumbo v1, "nf_utils"

    const-string/jumbo v2, "Package manager not found, this should NOT happen"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_0
    :goto_0
    return-object v0

    .line 319
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 320
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 321
    const-string/jumbo v3, "nf_utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Found # signatures: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_2
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    new-array v0, v3, [Ljava/lang/String;

    .line 325
    :goto_1
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 326
    const-string/jumbo v3, "SHA"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 327
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 328
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    aput-object v4, v0, v1

    .line 329
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 330
    const-string/jumbo v3, "nf_utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hash key["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 325
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 334
    :catch_0
    move-exception v1

    .line 335
    const-string/jumbo v2, "nf_utils"

    const-string/jumbo v3, "Name not found"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 337
    :catch_1
    move-exception v1

    .line 338
    const-string/jumbo v2, "nf_utils"

    const-string/jumbo v3, "No such an algorithm"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 340
    :catch_2
    move-exception v1

    .line 341
    const-string/jumbo v2, "nf_utils"

    const-string/jumbo v3, "Error while getting signature"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public static getAvailableInternalMemory()J
    .locals 4

    .prologue
    .line 188
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 189
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 191
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    .line 192
    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static getAvailableInternalMemoryAsString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAvailableInternalMemory()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 770
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 771
    if-eqz v0, :cond_0

    .line 774
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method public static getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 790
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 800
    :goto_0
    return-object v0

    .line 793
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 794
    check-cast v0, Landroid/content/ContextWrapper;

    .line 795
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 796
    if-eq v0, p0, :cond_1

    .line 797
    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/AndroidUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 800
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDimensionInDip(Landroid/content/Context;I)I
    .locals 2

    .prologue
    .line 372
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getExternalDownloadDirIfAvailable(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    .prologue
    .line 851
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->isExternalStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 852
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 854
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFreeSpaceOnFileSystem(Ljava/io/File;)J
    .locals 2

    .prologue
    .line 809
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 811
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    .line 813
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static getHeapSizeString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIntegerRes(Landroid/content/Context;I)I
    .locals 1

    .prologue
    .line 865
    if-nez p0, :cond_0

    .line 866
    const/4 v0, 0x0

    .line 868
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0
.end method

.method public static getMslAppBootKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 827
    const-string/jumbo v0, "MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA1h/UVRYyyDMlfY4eEiGTAYH8enFcyOaAyW3ulv1X/lCZL8pdk4KywDxssdhvkj8ib7vrrK8ktf/aeTxzezR6HVcS9JZ9kIfTgGrTVnUHFjcYOBdPAaeJl7Mx8+ubAlYeMwsOaG/nHD96/7RkqxF0+FB4RKZTnfjTziZaIEkmLLb+ifyB5mvk8SVa7i8qJf2Dw2l/0uxp93558Dl9xeAOH3Hz3G7wgtxnL71BSOE8H9s7z4etQmuSdf++n++C9HeszauVohHhgtejw+qqf63a8R9/6MeJwh/VRJTw7nXM2PN+8ERpQzJR+AWOkHqbC2mgvSYEFMtBhodOxnp73bR7LMIAbObrTm7VDQBcav5wWlH+KPCaBR0VCRSy9GG23CHOsuWVln2idnDz/zFBHnVnWKVAanZ3Ot4LmM2nrJvSlrt1OiQSLaI+CJHO8InfVTQEXpduoiGkLpc1HcmWNF98JuA8ZX3tqmcncdHnEMG3A5hZVnM6MrsidcQTsojl/MuoXrMeuWkvQQUe4wklBHleLs6jA/Au0oT4Q34luCvG3C32N2XiUcAeFdGd3MuDlDjqG88A9CLd21eh1HqkHD76qeWGnwumLHyJmqL25Lmz4LMjJ/nkXaY9r4Fya2/I/aV9kt5lCaPY3Wb4nDivjPqM6iP9vHCKOMxwjvbE4DFgN60CAwEAAQ=="

    return-object v0
.end method

.method public static getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 233
    if-nez p0, :cond_0

    .line 234
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    if-nez p1, :cond_1

    .line 238
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "App name cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 243
    if-nez v1, :cond_2

    .line 249
    :goto_0
    return-object v0

    :cond_2
    move-object v0, v1

    .line 246
    goto :goto_0

    .line 248
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 603
    if-nez p3, :cond_0

    .line 624
    :goto_0
    return-object p0

    .line 607
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 608
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 611
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 612
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v7, v7, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 613
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 614
    int-to-float v5, p3

    .line 616
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 617
    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 618
    const v6, -0xbdbdbe

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 619
    invoke-virtual {v1, v4, v5, v5, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 621
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 622
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, p0, v4, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object p0, v0

    .line 624
    goto :goto_0
.end method

.method public static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x20

    .line 488
    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 489
    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v2

    .line 490
    const-string/jumbo v3, "R"

    .line 492
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->getCurrentType(Landroid/content/Context;)Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v0

    .line 494
    if-nez v0, :cond_0

    .line 495
    const-string/jumbo v0, "nf_utils"

    const-string/jumbo v4, "This should not happen, player type was null at this point! Use default."

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->findDefaultPlayerType()Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v0

    .line 499
    :cond_0
    invoke-static {v0}, Lcom/netflix/mediaclient/media/PlayerType;->mapPlayerTypeForLogging(Lcom/netflix/mediaclient/media/PlayerType;)Ljava/lang/String;

    move-result-object v0

    .line 500
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 501
    const-string/jumbo v5, "Netflix/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getNrdLibVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "NCCP/2.15"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    const-string/jumbo v5, " (DEVTYPE="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "-"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getNrdLibVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    const-string/jumbo v1, " android-"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ; CERTVER=0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isActivityFinishedOrDestroyed(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 517
    if-nez p0, :cond_0

    .line 536
    :goto_0
    return v1

    .line 522
    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .line 523
    :goto_1
    if-nez v0, :cond_2

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No activity found in this context : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 531
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    goto :goto_0

    .line 522
    :cond_1
    const-class v0, Landroid/app/Activity;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_1

    .line 536
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v1

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static isAndroid6AndHihger()Z
    .locals 2

    .prologue
    .line 779
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x16

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 287
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 288
    if-nez v2, :cond_0

    .line 299
    :goto_0
    return v1

    .line 294
    :cond_0
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v1, v0

    .line 299
    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    move v0, v1

    .line 297
    goto :goto_1
.end method

.method public static isApplicationInBackground(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 722
    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isApplicationInForeground(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isApplicationInForeground(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 707
    if-nez p0, :cond_0

    .line 708
    const/4 v0, 0x0

    .line 710
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/NetflixApplication;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->getUserInput()Lcom/netflix/mediaclient/android/app/UserInputManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->isApplicationInForeground()Z

    move-result v0

    goto :goto_0
.end method

.method public static isExternalStorageAvailable()Z
    .locals 2

    .prologue
    .line 837
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 838
    const-string/jumbo v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isHd()Z
    .locals 1

    .prologue
    .line 201
    invoke-static {}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->isHdCapable()Z

    move-result v0

    return v0
.end method

.method public static isNetflixPreloaded(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 381
    .line 383
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 385
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 386
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    .line 388
    :cond_0
    const/4 v0, 0x1

    .line 395
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 396
    const-string/jumbo v2, "nf_utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Netflix Stub/App present in the system folder ?="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ApplicationInfo.flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_2
    :goto_0
    return v0

    .line 391
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isOpenMaxALSupportMainprofile()Z
    .locals 1

    .prologue
    .line 220
    invoke-static {}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->isOMXALmpCapable()Z

    move-result v0

    return v0
.end method

.method public static isOpenMaxALSupported()Z
    .locals 2

    .prologue
    .line 208
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0xd

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPropertyStreamingVideoDrs()Z
    .locals 1

    .prologue
    .line 214
    invoke-static {}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->isPropertyStreamingVideoDrs()Z

    move-result v0

    return v0
.end method

.method public static isScreenResolutionSameOrMore(Landroid/app/Activity;II)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 412
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    if-nez v1, :cond_2

    .line 413
    :cond_0
    const-string/jumbo v1, "nf_utils"

    const-string/jumbo v2, "Unable to get window manager! It should not happen!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_1
    :goto_0
    return v0

    .line 417
    :cond_2
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 418
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 420
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 421
    const-string/jumbo v2, "nf_utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Given size (w,h): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-string/jumbo v2, "nf_utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Screen size (w,h): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_3
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lt v2, p1, :cond_4

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, p2, :cond_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUnderTest()Z
    .locals 1

    .prologue
    .line 745
    const-string/jumbo v0, "com.netflix.mediaclient.test.NetflixTestRunner"

    .line 747
    :try_start_0
    const-string/jumbo v0, "com.netflix.mediaclient.test.NetflixTestRunner"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 748
    :catch_0
    move-exception v0

    .line 750
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWidgetInstalled(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 656
    .line 658
    :try_start_0
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 659
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetProvider;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v3

    .line 660
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 661
    const-string/jumbo v4, "nf_utils"

    const-string/jumbo v5, "found widget: %b, num widgets installed: %d"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    array-length v2, v3

    if-lez v2, :cond_2

    move v2, v0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x1

    array-length v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_0
    array-length v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v2, :cond_3

    :goto_1
    move v1, v0

    .line 670
    :cond_1
    :goto_2
    return v1

    :cond_2
    move v2, v1

    .line 661
    goto :goto_0

    :cond_3
    move v0, v1

    .line 663
    goto :goto_1

    .line 665
    :catch_0
    move-exception v0

    .line 666
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 667
    const-string/jumbo v2, "nf_utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AppWidgetManager dead? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public static logDeviceDensity(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 440
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    if-nez p0, :cond_1

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 447
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 449
    const-string/jumbo v1, "nf_utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Logical density: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const-string/jumbo v1, "nf_utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DPI density: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v0, :sswitch_data_0

    .line 472
    const-string/jumbo v0, "nf_utils"

    const-string/jumbo v1, "Uknown screen density!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 454
    :sswitch_0
    const-string/jumbo v0, "nf_utils"

    const-string/jumbo v1, "ldpi - 120 pixels/inch; dpi scale = .75 (4 dpi = 3 pixels)"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 457
    :sswitch_1
    const-string/jumbo v0, "nf_utils"

    const-string/jumbo v1, "mdpi - 160 pixels/inch; dpi scale = 1 (1 dpi = 1 pixel)"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 460
    :sswitch_2
    const-string/jumbo v0, "nf_utils"

    const-string/jumbo v1, "hdpi - 240 pixels/inch; dpi scale = 1.5 (2 dpi = 3 pixels)"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 463
    :sswitch_3
    const-string/jumbo v0, "nf_utils"

    const-string/jumbo v1, "tvhdpi - 213 pixels/inch; dpi scale = 1.33 (1 dpi = 3 pixels)"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 466
    :sswitch_4
    const-string/jumbo v0, "nf_utils"

    const-string/jumbo v1, "xhdpi - 320 pixels/inch; dpi scale = 2 (1 dpi = 2 pixels)"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 469
    :sswitch_5
    const-string/jumbo v0, "nf_utils"

    const-string/jumbo v1, "xxhdpi - 480 pixels/inch; dpi scale = 3 (1 dpi = 3 pixels)"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 452
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xd5 -> :sswitch_3
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_4
        0x1e0 -> :sswitch_5
    .end sparse-switch
.end method

.method public static queryIntentActivities(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;
    .locals 2

    .prologue
    .line 262
    if-nez p0, :cond_0

    .line 263
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_0
    if-nez p1, :cond_1

    .line 267
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Intent cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 274
    :goto_0
    return-object v0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static restartApplication(Landroid/app/Activity;)V
    .locals 7

    .prologue
    .line 730
    new-instance v0, Lcom/netflix/mediaclient/service/error/action/RestartApplicationAction;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/error/action/RestartApplicationAction;-><init>(Landroid/app/Activity;)V

    .line 731
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/error/action/RestartApplicationAction;->run()V

    .line 733
    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 734
    if-eqz v0, :cond_0

    .line 735
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    .line 736
    const-string/jumbo v1, "Debug menu"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/ui/launch/RelaunchActivity;->createStartIntent(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 737
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x10000000

    invoke-static {p0, v5, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 739
    :cond_0
    return-void
.end method

.method public static setWindowSecureFlag(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 686
    if-nez p0, :cond_1

    .line 696
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x12

    if-le v0, v1, :cond_0

    .line 694
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method private static unmuteAudio(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 648
    const-string/jumbo v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 649
    if-eqz v0, :cond_0

    .line 650
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 651
    const-string/jumbo v0, "nf_utils"

    const-string/jumbo v1, "UN-MUTED"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_0
    return-void
.end method
